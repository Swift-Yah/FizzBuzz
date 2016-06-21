//
//  ViewControllerUnitTests.swift
//  FizzBuzz
//
//  Created by Rafael Ferreira on 6/21/16.
//  Copyright © 2016 Swift Yah. All rights reserved.
//

import XCTest

@testable import FizzBuzz

/// It will test the interactions between `ViewController` and the `Game`.
class ViewControllerUnitTests: XCTestCase {
    /// A instance of our tested view controller.
    var viewController: ViewController!
    
    // MARK: XCTestCase functions.
    
    /// Set up routine that is called before each test.
    override func setUp() {
        super.setUp()
        
        // Creates an instance of `Main` storyboard.
        let storyboard = UIStoryboard(name: UIInitializeHelper.mainStoryboard, bundle: NSBundle.mainBundle())
        
        // Try to create a instance of `ViewController` and checks if has any value in an instance of that class for `view` property.
        guard let v = storyboard.instantiateViewControllerWithIdentifier(UIInitializeHelper.viewController) as? ViewController,
            kw = UIApplication.sharedApplication().keyWindow, _ = v.view else { return }
        
        viewController = v
        kw.rootViewController = viewController
    }
    
    // MARK: Tests' functions.
    
    /// Checks if after our `setUp` done the `viewController` property has a value.
    func testIfViewControllerHasAValue() {
        XCTAssertNotNil(viewController)
    }
    
    /// Checks if after first movement the new game score was incremented for one point.
    func testFirstMoveIncrementsScore() {
        viewController.play("1")
        
        let result = viewController.gameScore
        
        XCTAssertEqual(result, 1)
    }
    
    /// Checks if when is done two movementens the score continues to get incremented.
    func testTwoMovesIncrementsScore() {
        viewController.play("1")
        viewController.play("2")
        
        let result = viewController.gameScore
        
        XCTAssertEqual(result, 2)
    }
    
    /// Checks if always we have a game ready to go.
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    /// Checks if when score is two the correct move is 'Fizz'.
    func testIfFizzMoveIsWorking() {
        viewController.game.score = 2
        
        let result = viewController.play("Fizz")
        
        XCTAssertTrue(result)
    }
    
    /// Checks if when score is four the next move should be 'Buzz'.
    func testIfBuzzMoveIsWorking() {
        viewController.game.score = 4
        
        let result = viewController.play("Buzz")
        
        XCTAssertTrue(result)
    }
    
    /// Checks if when score is fourteen the next move should be 'FizzBuzz'.
    func testIfFizzBuzzMoveIsWorking() {
        viewController.game.score = 14
        
        let result = viewController.play("FizzBuzz")
        
        XCTAssertTrue(result)
    }
    
    /// Checks if when do a wrong move the score is not incremented.
    func testIfWrongMoveScoreNotIncremented() {
        let previousScore = viewController.gameScore
        
        viewController.play("Fizz")
        
        let score = viewController.gameScore
        
        XCTAssertEqual(score, previousScore)
    }
}
