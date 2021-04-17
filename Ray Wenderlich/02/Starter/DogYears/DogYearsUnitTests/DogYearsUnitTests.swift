//
//  DogYearsUnitTests.swift
//  DogYearsUnitTests
//
//  Created by Carlos Alberto Savi on 14/04/21.
//  Copyright © 2021 Razeware. All rights reserved.
//

import XCTest
@testable import DogYears

class DogYearsUnitTests: XCTestCase {
    
    let calc = Calculator()
    var dataResult: Data? = nil

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testMenuFailing() {
        
        var menu = Menu()
        menu.loadMenu(path: "Dummy.list")
        let count = menu.count
        XCTAssert(count == 0, "Menu loaded menu items for non-existing menu file")
    }
    
    func testAdd() {
        let result = calc.evaluate(op: "+", arg1: 2.0, arg2: 9.0)
        XCTAssert(result == 11.0, "Calculator add operation failed")
    }
    
    func testSubtraction() {
        let result = calc.evaluate(op: "-", arg1: 9.0, arg2: 2.0)
        XCTAssert(result == 7.0, "Calculator subtraction operation failed")
    }
    
    func testResult() {
        
        let res1 = calc.evaluate(op: "+", arg1: 2.0, arg2: 2.0)
        let res2 = calc.result
        XCTAssert(res1 == res2, "Calculator displayed result does not match calculator result")
    }

    func testResultClear() {
        
//        let _ = calc.evaluate(op: "+", arg1: 2.0, arg2: 2.0)
//        let res2 = calc.result
        calc.clear()
        let res3 = calc.result
        XCTAssert(res3 == 0, "Calculator clear operation failed")

    }
    
    func testInfoLoading() {
        
        let url = "https://raw.githubusercontent.com/FahimF/Test/master/DogYears-Info.rtf"
        
        let session = MockSession()
        let client = HTTPClient(session: session)
        client.get(url: url) {(data, error) in
            self.dataResult = data
        }
        let pred = NSPredicate(format: "dataResult != nil")
        let exp = expectation(for: pred, evaluatedWith: self, handler: nil)
        let result = XCTWaiter.wait(for: [exp], timeout: 5.0)
        if result == XCTWaiter.Result.completed {
            XCTAssertNotNil(dataResult, "No data was received from the server for InfoView content")
        } else {
            XCTAssert(false, "There was an error loading the InfoView content")

        }
    }
    
    func testViewControllerSettings() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        XCTAssertNotNil(sb, "Could not instantiate storyboard for View Controller Settings")
        let vc = sb.instantiateViewController(identifier: "SettingsView") as? SettingsViewController
        XCTAssertNotNil(vc, "Could not instantiate Settings View Controller")
        _ = vc?.view
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
