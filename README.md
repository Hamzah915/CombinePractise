# CombinePractise

What is a root class in swift?

A root class is a class that does not inherit from any other class, it is a base class in the class hierarchy and acts as a starting point for defining other class, in swift this class is 'AnyObject' This class is a special class that represents an instance of any class type

What are optionals?

Optionals are a feature in swift that allows you to represent the possibility of an absent value for a variable or a constant, meaning it can either have a value assigned, or be equal to nil. Optionals are declared by using a ? symbol after the type declaration, e.g. var name: String?. Optionals allow the compiler to enforce safety by preventing unexpected nil/null values from causing runtime errors and crashing an application. In order to access an optional value it must first be unwrap via one of several ways:

Optional binding/if let: This method is used if you want the program to continue running even if the optional value is nil, the unwrapped value can also only be used within the scope of the if let.
Guard let: This method is used if you want the function to exit/break or return if the value is equal to nil. if a value is successfully unwrapped with guard let, it can be used outside of the scope of the guard let.
Nil coalescing: Nil coalescing allows you to give an optional property a default value, usually for the sake of the UI incase the value is nil. This is denoted by two question marks ?? .
Force unwrapping: Force unwrapping is a way to forcefully unwrap an optional value without checking if it is nil or not, and force the code to continue running, which can produce crashes, it is only recommended to be used in specific situations such as testing.
What are the different initialisers

Swift has several different initialisers that can be used to create instances of classes, structs, and enums.

Designated initialisers: This is the primary/standard initialiser. It ensures that all properties of the instance are initialised
Convenience initialiser: Secondary initialisers that provide a shorter or more convenient way to initialise an instance.
Required initialiser: Used when creating a subclass. They indicate that every subclass must implement this initialiser.
Failable Initialiser: Failable initialisers are initialisers that can fail to initialise an instance, they return an optional instance, defined using the init? syntax. Used when the initialisiation can fail based on certain conditions.
Implicity unwrapped optional initialiser: Used for declaring properties that are optional but assumed to always have a non-nil value after initialisation
Classes vs Structs

Structs don't have access to inheritance features, whereas classes do
Structs have access to the "member-wise initialiser", so a property defined in a struct does not need to be given an explicit value, and the struct will automatically initialise it. Classes do not have access to this, so all properties that have not been explicitly assigned a value, will need to be initialised, meaning a class will need an initialiser.
Structs are value types, value types hold the actual data and are stored in the stack structure. Whereas classes are reference types, they store a reference to the memory address where the data is actually located, which is on the heap, and the variable simple holds a pointer to that location.
How do you write tests

Create a unit test file, in the test target of the application
One file, per viewModel/interactor/presenter that you are going to test.
Mock API data with dummy JSON, or stubbing
Must used @ testable import on the main target to gain access to the class you need
instantiate the class in setup with errors/deinit in tear down method
Create test cases for every method within the class your testing, at least 1 positive and negative, but preferable multiple different scenarios for every method.
Use XCTest statements to check the status of certain values or variables
What are the different app states

In iOS development, an application can be in various states throughout its lifecycle. Here are the common states an iOS application can have:

Not Running: The application is not launched or has been terminated by the system or the user.
Inactive: The application is running in the foreground but is not receiving events. This state usually occurs briefly during transitions, such as when a phone call comes in or when the user activates the app switcher.
Active: The application is running in the foreground and is receiving events. This is the normal state when the user interacts with the app.
Background: The application is in the background, but it is still executing code. In this state, the app may perform limited tasks, such as playing audio, tracking location, or updating content. However, the user interface is not visible.
Suspended: The application is in the background but is not executing code. The system may suspend an app to free up resources when it is no longer actively being used. In this state, the app remains in memory but does not perform any tasks until it becomes active again.
Terminated: The application has been terminated by the user or the system. It is no longer running and has no presence in the device's memory.
Various ways to respond to state changes iOS APIs, such as AppDelegate methods and UIApplicationDelegate protocol.

Escaping vs non escaping closures

Non-Escaping Closures: By default, closures are considered non-escaping. A non-escaping closure is one that is executed within the lifetime of the function it's passed to. It means the closure is guaranteed to be executed before the function returns. Non-escaping closures can be used directly within the function without any special consideration. For example non-escaping closures are commonly used with higher order functions like map or filter.

Escaping Closures: An escaping closure is one that outlives the function it's passed to. It means the closure can be stored, assigned to properties, or invoked outside the scope of the function. When a closure is escaping, you need to explicitly mark it with the @escaping attribute. For example a completion handler used to update the UI after an API.
