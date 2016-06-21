//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Rafael Ferreira on 6/16/16.
//  Copyright © 2016 Swift Yah. All rights reserved.
//

import UIKit

/// The `ViewController` that conects our UI with `Brain` model.
class ViewController: UIViewController {
    /// The current game score.
    private(set) var gameScore = 0
    
    /// The current game.
    private(set) var game = Game()
    
    // MARK: Public functions.

    /// Calls for the `Brain` that the user is trying to do a move.
    func play(move: String) -> Bool {
        let result = game.play(move)
        
        gameScore = result.score
        
        return result.right
    }
}

