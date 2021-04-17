//
//  FirstTests.swift
//  FirstTests
//
//  Created by Carlos Alberto Savi on 13/04/21.
//

import XCTest
@testable import First

class FirstTests: XCTestCase {
    
    var hater: Hater!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        hater = Hater()
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        hater = nil
        
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testHaterStartsNicely() {
        XCTAssertFalse(hater.hating, "New Haters should not be hating.")
    }
    
    func testHaterHatesAfterBadDay() {
        hater.hadABadDay()
        XCTAssertTrue(hater.hating)
    }
    func testHaterHappyAfterGoodDay() {
        hater.hadAGoodDay()
        XCTAssertFalse(hater.hating)
    }
    
}
