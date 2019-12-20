//
//  SwiftTryCatch.h
//
//  Created by Dan Federman on 12/20/19.
//  Copyright (c) 2019 Dan Federman.
//
/*
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.

 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

import SwiftTryCatch
import XCTest

final class SwiftTryCatchTests: XCTestCase {

    func test_try_catchesObjectiveCFailure() {
        let doomedFileHandle = FileHandle(fileDescriptor: 101)
        var didCatch = false
        SwiftTryCatch.try({
            // This will throw an exception.
            doomedFileHandle.readData(ofLength: 5)
        }, catch: { exception in
            XCTAssertNotNil(exception)
            didCatch = true
        })
        XCTAssertTrue(didCatch)
    }

    func test_try_doesNotExecuteCatchIfNoExceptionThrown() {
        var didCatch = false
        SwiftTryCatch.try({
            // Nothing to do here.
        }, catch: { exception in
            didCatch = true
        })
        XCTAssertFalse(didCatch)
    }

}
