# Generics (variables and functions)

Generics are a feature that allow reusability of code by giving capability to write components that are work for many types rather than a single specific one. TypeScript had generics introduced in version 0.9. One particular benefit of having generic types is so that TypeScript can reliably follow the expected behaviour of JavaScript libraries. [@1]

Allowing a range of types is shown in the simple example provided by Microsoft's TypeScript handbook available on GitHub:

```ts
function identity<T>(arg: T): T {
    return arg;
}
```
[@2]

This is the identity function: the return value is exactly the value that was passed in. The `T` is a type variable whose value is determined based on what value is passed in. Then that `T` is used again as the return type. It is precise since it retains exactly the type that was passed in, and it works for multiple types, hence the above is considered a generic function.

The `T` itself is the generic. As in
```ts
var myArray = new Array<T>();
```
Once a `T` has been specified, you need to continue using that particular type or else the compiler disallows it. Contrast this with JavaScript where an array can contain elements of different types. [@3]

When calling a generic function in TypeScript. Either specify the type explicitly or let the compiler figure it out (this is called type argument inference). There can be cases when the compiler will not be able to figure it out and we will want to use the explicit method. Examples below based on the TypeScript handbook again.

```ts
var output = identity<number>(1843);  // output will have type 'number', explicitly passed to the function
```

```ts
var output = identity(1843);  // output will have type 'number', compiler inspects `1843` and sets the type automatically
```

In TypeScript, if a generic function is created, the compiler will enforce that all the actions taken in the function are used in such a way that they *could* work with all types. So if you attempt an operation that is only allowed for type `string` but not `number`, it will be forbidden (causes an error). But this is recognized only at compile time. There is no run-time representation for type parameters. [@1]

Generic parameters can be constrained by and get members of the supertypes. For example, by using `extends` in the following function, `x` and `y` are subtypes of Comparable (a generic function) and get a `compareTo` member:
```ts
function compare<T extends Comparable>(x: T, y: T): number {
    if (x == null) return y == null ? 0: -1;
    if (y == null) return 1;
    return x.localeCompare(y);  // localeCompare is provided by Comparable
}
```
[@1 Section 6.5]


# Mixins

Mixins are a way of reusing code to make new classes by combining desired parts of existing classes without taking on all features of those classes. The specificity of which methods are retained avoids the problems from ambiguity that comes up in multiple inheritance otherwise. They are useful in situations where a particular behaviour is repeated in many classes, providing optional behaviour in a class, and making variations on similar features in the augmented class. [@4]

Mixins do not have full native support in TypeScript so the following piece of code is required:
```ts
function applyMixins(derivedCtor: any, baseCtors: any[]) {
    baseCtors.forEach(baseCtor => {
        Object.getOwnPropertyNames(baseCtor.prototype).forEach(name => {
            derivedCtor.prototype[name] = baseCtor.prototype[name];
        });
    });
}
```
[@2]

When composing a class of mixins, we use `implements`, *not* `extends` so these new classes are interfaces and use the types from the source classes, not their implementations. Therefore, the implementations must be provided in-class at runtime, and the compiler requires stand-in properties (with their types) to have this assurance. The above helper function takes the properties of each of the mixins and copies them to the target, substituting implementations where stand-in properties are encountered. [@2]

This example from Fenton's _Pro TypeScript_ [@4] shows some classes whose behaviour we would like to reuse:
```ts
class Sings {
    sing() {
        console.log('Singing');
    }
}
class Dances {
    dance() {
        console.log('Dancing');
    }
}
class Acts {
    act() {
        console.log('Acting');
    }
}
```
Making the composite class from the mixins looks like this:
```ts
class AllRounder implements Acts, Dances, Sings {
    act: () => void;
    dance: () => void;  // types for the stand-in properties
    sing: () => void;
}
```
The helper function pulls all 3 classes behaviours together into the new `AllRounder` class, after which it can be used as any other class:
```ts
applyMixins(AllRounder, [Acts, Dances, Sings]);
```
A benefit of having stand-in properties in the augmented class is that any changes to the behaviour is restricted to one place: the source classes. This improves reusability and robustness of the code.[@5]

One issue is that the mechanism behind adding implementation in `applyMixins` is not checked, so it is dependent on the programmer to ensure that it is called with the correct list of class names. A restriction to keep in mind is that mixins cannot be used with private members: since the member is not implemented in the augmented class, an error will be generated at compile time. [@4]

**References**
[@5]
"The Definitive TypeScript Guide." _SitePen_. 31 Dec. 2013. 12 Nov. 2015. <https://www.sitepen.com/blog/2013/12/31/definitive-guide-to-typescript/>

[@4]
Fenton, Steve. _Pro TypeScript: Application-Scale JavaScript Development_. Springer, 2014. Print.

[@3]
"TypeScript Generics." _Notebook Heavy_. David Iffland. 15 Jul. 2013. 12 Nov. 2015. <http://notebookheavy.com/2013/07/15/typescript-generics/>

[@2]
"TypeScript Handbook." _Microsoft_. 9 Nov. 2015. 12 Nov. 2015. <https://github.com/Microsoft/TypeScript-Handbook/blob/master/pages/Generics.md>, <https://github.com/Microsoft/TypeScript-Handbook/blob/master/pages/Mixins.md>

[@1]
"TypeScript: Language Specification." _Microsoft_. Feb 2015. 12 Nov. 2015. <http://www.typescriptlang.org/Content/TypeScript%20Language%20Specification.pdf>
