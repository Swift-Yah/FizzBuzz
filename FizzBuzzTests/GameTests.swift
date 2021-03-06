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
        game.play(.Number)
        
        XCTAssertEqual(game.score, 1)
    }
    
    /// Checks if the user's score is incrementing one by one point after each time that the `play` method is called.
    func testOnPlayTwiceScoreKeepIncrementing() {
        game.play(.Number)
        game.play(.Number)
        
        XCTAssertEqual(game.score, 2)
    }
    
    /// Checks if when the score is two the next string is 'Fizz'.
    func testIfMoveIsRight() {
        game.score = 2
        
        let result = game.play(.Fizz).right
        
        XCTAssertTrue(result)
    }
    
    /// Checks if when the score is one and the move is 'Fizz' that move is wrong.
    func testIfMoveIsWrong() {
        game.score = 1
        
        let result = game.play(.Fizz).right
        
        XCTAssertFalse(result)
    }
    
    /// Checks if when the score is four the next move is 'Buzz'.
    func testIfCorrectBuzzMove() {
        game.score = 4
        
        let result = game.play(.Buzz).right
        
        XCTAssertTrue(result)
    }
    
    /// Checks if when the score is one the next move is NOT 'Buzz'.
    func testIfWrongBuzzMove() {
        game.score = 1
        
        let result = game.play(.Buzz).right
        
        XCTAssertFalse(result)
    }
    
    /// Checks if when the score is fourteen the next move is 'FizzBuzz'.
    func testIfCorrectFizzBuzzMove() {
        game.score = 14
        
        let result = game.play(.FizzBuzz).right
        
        XCTAssertTrue(result)
    }
    
    /// Checks if when the value is one the next move is NOT 'FizzBuzz'.
    func testIfWrongFizzBuzzMove() {
        game.score = 1
        
        let result = game.play(.FizzBuzz).right
        
        XCTAssertFalse(result)
    }
    
    /// Checks if when the score is zero the next move is one.
    func testIfCorrectNumberMove() {
        game.score = 0
        
        let result = game.play(.Number).right
        
        XCTAssertTrue(result)
    }
    
    /// Checks if when the score is two the next move is NOT two, in other words, the same number.
    func testIfWrongNumberMove() {
        game.score = 2
        
        let result = game.play(.Number).right
        
        XCTAssertFalse(result)
    }
    
    /// Checks if when a wrong move is done the score is not incrementing.
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        
        game.play(.Fizz)
        
        XCTAssertEqual(game.score, 1)
    }
    
    /// Checks if when we do a move the right return value is true.
    func testPlayShouldReturnIfMoveRight() {
        let result = game.play(.Number).right
        
        XCTAssertTrue(result)
    }
    
    /// Checks if when we do a move the score also is returning.
    func testPlayShouldReturnNewScore() {
        let result = game.play(.Number).score
        
        XCTAssertGreaterThan(result, 0)
    }
}
