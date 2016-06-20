//
//  Brain.swift
//  FizzBuzz
//
//  Created by Rafael Ferreira on 6/20/16.
//  Copyright © 2016 Swift Yah. All rights reserved.
//

/// Responsible for doing all process in a given number and tell to us if it is divisible by three, five, both or neither.
class Brain {
    /// Checks if a given number is divisible by three.
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(3, number: number)
    }
    
    /// Checks if a given number is divisible by five.
    func isDivisibleByFive(number: Int) -> Bool {
        return isDivisibleBy(5, number: number)
    }
    
    /// Checks if a given number is divisible by fifteen.
    func isDivisibleByFifteen(number: Int) -> Bool {
        return isDivisibleBy(15, number: number)
    }
    
    /// Checks if a given number is "Fizz", "Buzz" or "FizzBuzz".
    func check(number: Int) -> String {
        switch number {
        case number where isDivisibleByFifteen(number):
            return "FizzBuzz"
            
        case number where isDivisibleByThree(number):
            return "Fizz"
            
        case number where isDivisibleByFive(number):
            return "Buzz"
            
        default:
            return "\(number)"
        }
    }
    
    // MARK: Private functions.
    
    /// Checks if a given `number` is divisible by `divisor`.
    private func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return (number % divisor) == 0
    }
}
