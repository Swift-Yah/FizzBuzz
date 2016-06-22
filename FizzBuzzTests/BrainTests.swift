//
//  BrainTests.swift
//  FizzBuzz
//
//  Created by Rafael Ferreira on 6/20/16.
//  Copyright © 2016 Swift Yah. All rights reserved.
//

import XCTest

@testable import FizzBuzz

/// The unit test class for our `Brain` class.
class BrainTests: XCTestCase {
    /// Our instance of `Brain` to be tested.
    let brain = Brain()
    
    // MARK: The tests' methods.
    
    /// It will test that our app can tell if a number is divisible by three.
    func testIsDivisibleByThree() {
        let result = brain.isDivisibleByThree(3)
        
        XCTAssertTrue(result)
    }
    
    /// It will test if the number one is NOT divisible by three.
    func testIsNotDivisibleByThree() {
        let result = brain.isDivisibleByThree(1)
        
        XCTAssertFalse(result)
    }
    
    /// It will test if five is divisible by five.
    func testIsDivisibleByFive() {
        let result = brain.isDivisibleByFive(5)
        
        XCTAssertTrue(result)
    }
    
    /// It will test if one is NOT divisible by five.
    func testIsNotDivisibleByFive() {
        let result = brain.isDivisibleByFive(1)
        
        XCTAssertFalse(result)
    }
    
    /// It will test if fifteen is divisible by fifteen.
    func testIsDivisibleByFifteen() {
        let result = brain.isDivisibleByFifteen(15)
        
        XCTAssertTrue(result)
    }
    
    /// It will test if one is NOT divisible by fifteen.
    func testIsNotDivisibleByFifteen() {
        let result = brain.isDivisibleByFifteen(1)
        
        XCTAssertFalse(result)
    }
    
    /// It will check that our app can 'say' Fizz.
    func testSayFizz() {
        let result = brain.check(3)
        
        XCTAssertEqual(result, Move.Fizz)
    }
    
    /// It will check if when the given number is divisible by five the result is Buzz.
    func testSayBuzz() {
        let result = brain.check(5)
        
        XCTAssertEqual(result, Move.Buzz)
    }
    
    /// It will check if the value fifteen is resulting in FizzBuzz.
    func testSayFizzBuzz() {
        let result = brain.check(15)
        
        XCTAssertEqual(result, Move.FizzBuzz)
    }
    
    /// It will check if the value returned when the value is not divisible by 3, 5, both or neither is the number itself.
    func testSayOneString() {
        let result = brain.check(1)
        
        XCTAssertEqual(result, Move.Number)
    }
}
