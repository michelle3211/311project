# Generics (variables and functions)

Generics are a feature that allow reusability of code by giving capability to write components that are work for many types rather than a single specific one. TypeScript had generics introduced in version 0.9. One particular benefit of having generic types is so that TypeScript can reliably follow the expected behaviour of JavaScript libraries. [ref. language spec http://www.typescriptlang.org/Content/TypeScript%20Language%20Specification.pdf]

Allowing a range of types is shown in the simple example provided by Microsoft's TypeScript handbook available on GitHub:

```ts
function identity<T>(arg: T): T {
    return arg;
}
```
[ref: https://github.com/Microsoft/TypeScript-Handbook/blob/master/pages/Generics.md]

This is the identity function: the return value is exactly the value that was passed in. The `T` is a type variable whose value is determined based on what value is passed in. Then that `T` is used again as the return type. It is precise since it retains exactly the type that was passed in, and it works for multiple types, hence the above is considered a generic function.

The `T` itself is the generic. As in
```ts
var myArray = new Array<T>();
```
Once a `T` has been specified, you need to continue using that particular type or else the compiler disallows it. Contrast this with JavaScript where an array can contain elements of different types. [ref: Notebook Heavy (technical blog) http://notebookheavy.com/2013/07/15/typescript-generics/]

When calling a generic function in TypeScript. Either specify the type explicitly or let the compiler figure it out (this is called type argument inference). There can be cases when the compiler will not be able to figure it out and we will want to use the explicit method. Examples below based on the TypeScript handbook again.

```ts
var output = identity<number>(1843);  // output will have type 'number', explicitly passed to the function
```

```ts
var output = identity(1843);  // output will have type 'number', compiler inspects `1843` and sets the type automatically
```

In TypeScript, if a generic function is created, the compiler will enforce that all the actions taken in the function are used in such a way that they *could* work with all types. So if you attempt an operation that is only allowed for type `string` but not `number`, it will be forbidden (causes an error). But this is recognized only at compile time. There is no run-time representation for type parameters. [ref. language spec]

Generic parameters can be constrained by and get members of the supertypes. For example, by using `extends` in the following function, `x` and `y` are subtypes of Comparable (a generic function) and get a `compareTo` member:
```ts
function compare<T extends Comparable>(x: T, y: T): number {
    if (x == null) return y == null ? 0: -1;
    if (y == null) return 1;
    return x.localeCompare(y);  % localeCompare is provided by Comparable
}
```
[ref: example from language spec, section 6.5]


# Mixins

Mixins are a way of reusing code to make new classes by combining desired parts of existing classes without taking on all features of those classes. The specificity of which methods are retained avoids the problems from ambiguity that comes up in multiple inheritance otherwise.

[Need to write something more than just the example in the reference handbook! (But not apparent that there's a simpler example.]
https://github.com/Microsoft/TypeScript-Handbook/blob/master/pages/Mixins.md
