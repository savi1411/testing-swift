//
//  DogYearsPerformanceTests.swift
//  DogYearsPerformanceTests
//
//  Created by Carlos Alberto Savi on 15/04/21.
//  Copyright © 2021 Razeware. All rights reserved.
//

import XCTest
@testable import DogYears

class DogYearsPerformanceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMenuLoadPerformance() {
        
        var menu = Menu()
        self.measure {
            menu.loadDefaultMenu()
        }
    }

}
