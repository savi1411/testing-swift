//
//  DogYearsUnitTests.swift
//  DogYearsUnitTests
//
//  Created by Brian on 11/30/17.
//  Copyright © 2017 Razeware. All rights reserved.
//

import XCTest
@testable import DogYears

class DogYearsUnitTests: XCTestCase {
  
    let calc = Calculator()
  
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAdd() {
      let result = calc.evaluate(op: "+", arg1: 2.0, arg2: 9.0)
      XCTAssert(result == 11.0, "Calculator add operation failed")
    }
  
    func testSubtract() {
      
      let result = calc.evaluate(op: "-", arg1: 9.0, arg2: 2.0)
      XCTAssert(result == 7.0, "Calculator subtraction operation failed")
      
    }
  
    func testResult() {
    
      let res1 = calc.evaluate(op: "+", arg1: 2.0, arg2: 2.0)
      let res2 = calc.result
      XCTAssert(res1 == res2, "Calculator displayed result does not match calculation result.")
    
    }
  
  
    func testClear() {
    
      let res1 = calc.evaluate(op: "+", arg1: 2.0, arg2: 2.0)
      let res2 = calc.result
      XCTAssert(res1 == res2, "Calculated value did not match result in clear operation test")
      calc.clear()
      let res3 = calc.result
      XCTAssert(res2 != res3 && res3 == 0.0, "Calculator clear operation failed")
    
    }
  
    func testInfoLoading() {
    
      let url = "https://raw.githubusercontent.com/FahimF/Test/master/DogYears-Info.rtf"
      HTTPClient.shared.get(url: url) {
        (data, error) in
          XCTAssertNil(error, "There was an error loading the InfoView content")
          XCTAssertNotNil(data, "No data was received from the server for InfoView content")
      }
      
    }
  
  

    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
