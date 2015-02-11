SwiftTryCatch
=============

Adds try/catch support for Swift.

Simple wrapper built around Objective-C to achieve the same result.

##Usage

### Install via Cocoapods

    pod 'SwiftTryCatch', '~> 0.0'

### Create bridging header

- When prompted with "Would you like to configure an Objective-C bridging header?" press Yes.
- Go to bridging header and add:

        #import "SwiftTryCatch.h"

### Use

    SwiftTryCatch.try({
            //try something
         }, catch: { (error) in
            //handle error
         }, finally: {
            //close resources
    })
