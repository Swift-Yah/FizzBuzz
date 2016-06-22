//
//  Move.swift
//  FizzBuzz
//
//  Created by Rafael Ferreira on 6/21/16.
//  Copyright © 2016 Swift Yah. All rights reserved.
//

/**
    All possible move alternatives.
 
    - Number: Says that the next move is to increment the number.
    - Fizz: To say that the next number is divisible by three.
    - Buzz: To say that the next number is divisible by five.
    - FizzBuzz: When the next number is divisible by three and five.
 */
enum Move {
    case Number
    case Fizz
    case Buzz
    case FizzBuzz
}
