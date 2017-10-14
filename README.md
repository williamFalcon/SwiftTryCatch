SwiftTryCatch
=============

Adds try/catch support for Swift.

Simple wrapper built around Objective-C `@try`/`@catch`/`@finally`.

##Usage

### Install via Cocoapods

    pod 'SwiftTryCatch'

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
