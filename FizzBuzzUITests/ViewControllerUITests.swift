//
//  ViewControllerUITests.swift
//  FizzBuzz
//
//  Created by Rafael Ferreira on 6/21/16.
//  Copyright © 2016 Swift Yah. All rights reserved.
//

import XCTest

/// Contains the UI tests for ensure that our UI behaves like it was designed to be.
class ViewControllerUITests: XCTestCase {
    let app = XCUIApplication()
    
    /// Always launch the `XCUIApplication` before each UI test.
    override func setUp() {
        super.setUp()
        
        app.launch()
    }
    
    // MARK: UI test's functions.
    
    /// Checks if when the `NumberButton` is tapped the score also is incrementing.
    func testTapNumberButtonIncrementsScore() {
        let numberButton = app.buttons["NumberButton"]
        
        numberButton.tap()
        
        let score = numberButton.label
        
        XCTAssertEqual(score, "1")
    }
    
    /// Checks if when the `NumberButton` is tapped twice the score is incremented to value '2'.
    func testIfTapTwiceNumberButtonIncrementsTwiceScore() {
        let numberButton = app.buttons["NumberButton"]
        
        numberButton.tap()
        numberButton.tap()
        
        let score = numberButton.label
        
        XCTAssertEqual(score, "2")
    }
    
    /// Checks if when the score is two and tapped `FizzButton` the score is incrementing to '3'.
    func testTapFizzButtonIncrementsScore() {
        let numberButton = app.buttons["NumberButton"]
        let fizzButton = app.buttons["FizzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        
        let score = numberButton.label
        
        XCTAssertEqual(score, "3")
    }
    
    /// Checks if when the score is four and tapped `BuzzButton` the score is incremented to '5'.
    func testTapBuzzButtonIncrementsScore() {
        let numberButton = app.buttons["NumberButton"]
        let fizzButton = app.buttons["FizzButton"]
        let buzzButton = app.buttons["BuzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        
        let score = numberButton.label
        
        XCTAssertEqual(score, "5")
    }
    
    /// Checks if when the score is fourteen and tapped `FizzBuzzButton` the score is incremented to '15'.
    func testTapFizzBuzzButtonIncrementsScore() {
        let numberButton = app.buttons["NumberButton"]
        let fizzButton = app.buttons["FizzButton"]
        let buzzButton = app.buttons["BuzzButton"]
        let fizzBuzzButton = app.buttons["FizzBuzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        buzzButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        numberButton.tap()
        fizzBuzzButton.tap()
        
        let score = numberButton.label
        
        XCTAssertEqual(score, "15")
    }
}
