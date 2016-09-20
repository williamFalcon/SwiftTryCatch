SwiftTryCatch
=============

Adds try/catch support for Swift.

Simple wrapper built around Objective-C `@try`/`@catch`/`@finally`.

##Usage

### Install via Cocoapods

    pod 'SwiftTryCatch'

### Create bridging header (not necessary if using use_frameworks! flag in PodFile)   

- When prompted with "Would you like to configure an Obj-C bridging header?", press "Yes".
- Go to bridging header and add:

        #import "SwiftTryCatch.h"

### Use

    SwiftTryCatch.tryRun({
             // try something
         }, catchRun: { (error) in
             println("\(error.description)")
         }, finallyRun: {
             // close resources
    })
