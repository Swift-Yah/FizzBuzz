//
//  GameTests.swift
//  FizzBuzz
//
//  Created by Rafael Ferreira on 6/20/16.
//  Copyright © 2016 Swift Yah. All rights reserved.
//

import XCTest

@testable import FizzBuzz

/// All tests for ensure the correct works of our game engine.
class GameTests: XCTestCase {
    let game = Game()
    
    // MARK: The tests' methods.
    
    /// Checks if the user's score start with zero points.
    func testGameStartAtZero() {
        let result = game.score
        
        XCTAssertEqual(result, 0)
    }
    
    /// Checks if the user's score is incrementing after user plays.
    func testOnPlayScoreIncremented () {
        game.play("1")
        
        XCTAssertEqual(game.score, 1)
    }
    
    /// Checks if the user's score is incrementing one by one point after each time that the `play` method is called.
    func testOnPlayTwiceScoreKeepIncrementing() {
        game.play("1")
        game.play("2")
        
        XCTAssertEqual(game.score, 2)
    }
    
    /// Checks if when the score is two the next string is 'Fizz'.
    func testIfMoveIsRight() {
        game.score = 2
        
        let result = game.play("Fizz")
        
        XCTAssertTrue(result)
    }
    
    /// Checks if when the score is one and the move is 'Fizz' that move is wrong.
    func testIfMoveIsWrong() {
        game.score = 1
        
        let result = game.play("Fizz")
        
        XCTAssertFalse(result)
    }
    
    /// Checks if when the score is four the next move is 'Buzz'.
    func testIfCorrectBuzzMove() {
        game.score = 4
        
        let result = game.play("Buzz")
        
        XCTAssertTrue(result)
    }
    
    /// Checks if when the score is one the next move is NOT 'Buzz'.
    func testIfWrongBuzzMove() {
        game.score = 1
        
        let result = game.play("Buzz")
        
        XCTAssertFalse(result)
    }
    
    /// Checks if when the score is fourteen the next move is 'FizzBuzz'.
    func testIfCorrectFizzBuzzMove() {
        game.score = 14
        
        let result = game.play("FizzBuzz")
        
        XCTAssertTrue(result)
    }
    
    /// Checks if when the value is one the next move is NOT 'FizzBuzz'.
    func testIfWrongFizzBuzzMove() {
        game.score = 1
        
        let result = game.play("FizzBuzz")
        
        XCTAssertFalse(result)
    }
    
    /// Checks if when the score is zero the next move is one.
    func testIfCorrectNumberMove() {
        game.score = 0
        
        let result = game.play("1")
        
        XCTAssertTrue(result)
    }
    
    /// Checks if when the score is two the next move is NOT two, in other words, the same number.
    func testIfWrongNumberMove() {
        game.score = 2
        
        let result = game.play("2")
        
        XCTAssertFalse(result)
    }
    
    /// Checks if when a wrong move is done the score is not incrementing.
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        
        game.play("Fizz")
        
        XCTAssertEqual(game.score, 1)
    }
}
