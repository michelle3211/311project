#!/bin/bash

if [ -z "$1" ]; then
    echo "usage: compile-and-handin.sh CS_UGRAD_ID"
    exit 1
fi

COURSE=cs311
SUBMISSION=${PWD##*/} # Current folder name
RESUBMISSION=project-background-report

echo "compiling TeX to PDF"
/usr/texbin/pdflatex $RESUBMISSION.tex
/usr/texbin/bibtex   $RESUBMISSION.tex
/usr/texbin/pdflatex $RESUBMISSION.tex
/usr/texbin/pdflatex $RESUBMISSION.tex

if [ "$2" ]; then
    echo "Not copying files to remote server"
    exit 1
fi

REMOTE_USER=$1
REMOTE_USER_FIRST_LETTER="$(echo $1 | head -c 1)"
REMOTE_DIR=/home/$REMOTE_USER_FIRST_LETTER/$REMOTE_USER/$COURSE/$SUBMISSION/
REMOTE_HOST=lulu.ugrad.cs.ubc.ca
HANDIN_CMD=/cs/local/bin/handin

LOCAL_FILES=`pwd`/*

ssh -t $REMOTE_USER@$REMOTE_HOST bash -c "'
    rm -rf   $REMOTE_DIR
    mkdir -p $REMOTE_DIR
'"

scp -p $RESUBMISSION.pdf $REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR/$RESUBMISSION.pdf

ssh -t $REMOTE_USER@$REMOTE_HOST bash -c "'
    echo $HANDIN_CMD       $COURSE $SUBMISSION running handin for the first time
         $HANDIN_CMD       $COURSE $SUBMISSION
    echo ===================================================================================================
    echo $HANDIN_CMD -p -o $COURSE $SUBMISSION overwriting previous handin submission
         $HANDIN_CMD -p -o $COURSE $SUBMISSION
    echo ===================================================================================================
    echo $HANDIN_CMD -c    $COURSE $SUBMISSION checking files that were handed in
         $HANDIN_CMD -c    $COURSE $SUBMISSION
'"

echo "cleaning up pdflatex files"
rm $RESUBMISSION.out
rm $RESUBMISSION.log
rm $RESUBMISSION.aux

git add $RESUBMISSION.pdf
git commit -m "[pdf] recompile"
git push origin master
