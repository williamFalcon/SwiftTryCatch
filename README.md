SwiftTryCatch
=============

Adds try/catch support for Swift.

Simple wrapper built around Objective-C `@try`/`@catch`/`@finally`.

## Usage

### Install via Swift Package Manager

import PackageDescription

let package = Package(
    name: "YourModule",
    dependencies: [
        .Package(url: "https://github.com/Dean151/SwiftTryCatch.git", majorVersion: 1, minor: 1),
    ]
)

### Install via Cocoapods

    pod 'SwiftTryCatch', :git => 'https://github.com/Dean151/SwiftTryCatch.git'

### Import

If using Frameworks for pods (use_frameworks! flag in Podfile):

    import SwiftTryCatch

or import into Obj-C bridging header:

    #import "SwiftTryCatch.h"

### Use

    SwiftTryCatch.try({
             // try something
         }, catch: { (error) in
             print("\(error.description)")
         }, finally: {
             // close resources
    })

## Notes
It was pointed out that without -fobjc-arc-exceptions flag this will lead to memory leaks

http://clang.llvm.org/docs/AutomaticReferenceCounting.html#exceptions

Therefore, ARC-generated code leaks by default on exceptions, which is just fine if the process is going to be immediately terminated anyway. Programs which do care about recovering from exceptions should enable the option.

