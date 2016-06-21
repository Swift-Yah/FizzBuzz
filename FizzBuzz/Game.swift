//
//  Game.swift
//  FizzBuzz
//
//  Created by Rafael Ferreira on 6/20/16.
//  Copyright © 2016 Swift Yah. All rights reserved.
//

/// The game engine.
class Game {
    /// Store the current user's score.
    var score = 0
    
    /// Maintain an unique way of access `Brain` instance.
    private let brain = Brain()
    
    // MARK: Public functions.
    
    /// Checks if the next `move` passed is correct and increment the user's score.
    func play(move: String) -> (right: Bool, score: Int) {
        score += 1
        
        let result = brain.check(score) == move
        
        if !result {
            score -= 1
        }
        
        return (result, score)
    }
}
