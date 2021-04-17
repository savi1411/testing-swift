//
//  ThrowingTests.swift
//  FirstTests
//
//  Created by Carlos Alberto Savi on 14/04/21.
//

import XCTest

enum GameError: Error {
    case notPurchased
    case notInstalled
    case parentalControlsDisallowed
}

struct Game {
    let name: String
    func play() throws {
        if name == "BioBlitz" {
            throw GameError.notPurchased
        } else if name == "Blastazap" {
            throw GameError.notInstalled
        } else if name == "Dead Storm Rising" {
            throw GameError.parentalControlsDisallowed
        } else {
            print("\(name) is OK to play!")
        }
        
    }
}

class ThrowingTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
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
    
    func testPlayingBioBlitzThrows() {
        let game = Game(name: "BioBlitz")
        do {
            try game.play()
            XCTFail()
        } catch GameError.notPurchased {
            // sucesso para BioBlitz!
        } catch {
            XCTFail()
        }
    }
    
//    func testPlayingBlastazapThrows() {
//        let game = Game(name: "Blastazap")
//        do {
//            try game.play()
//            XCTFail()
//        } catch GameError.notInstalled {
//            // sucesso para Blastazap
//        } catch {
//            XCTFail()
//        }
//    }
    
    func testPlayingDeadStormRisingThrows() {
        let game = Game(name: "Dead Storm Rising")
        do {
            try game.play()
            XCTFail()
        } catch GameError.parentalControlsDisallowed {
            // sucesso para Dead Storm Rising
        } catch {
            XCTFail()
        }
    }
    
    func testPlayingOkToPlay() {
        let game = Game(name: "Civilization")
        do {
            try game.play()
            // Sucesso para qualquer outro game
        } catch {
            XCTFail()
        }
    }
    
    func testPlayingBlastazapThrows() {
        let game = Game(name: "Blastazap")
        XCTAssertThrowsError(try game.play()) { error in
            XCTAssertEqual(error as? GameError,
                           GameError.notInstalled)
        }
    }
    
    func testPlayingExplodingMonkeysDoesntThrow() {
        let game = Game(name: "Civilization")
        XCTAssertNoThrow(try game.play())
    }
    
//    func testDeadStormRisingThrows() throws {
//        let game = Game(name: "Dead Storm Rising")
//        try game.play()
//    }

}
