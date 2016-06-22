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
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    
    // MARK: Read-only variables.
    
    /// The current game score.
    private(set) var gameScore = 0 {
        didSet {
            numberButton.setTitle("\(gameScore)", forState: .Normal)
        }
    }
    
    /// The current game.
    private(set) var game = Game()
    
    // MARK: Public functions.

    /// Calls for the `Brain` that the user is trying to do a move.
    func play(move: Move) -> Bool {
        let result = game.play(move)
        
        gameScore = result.score
        
        return result.right
    }
    
    // MARK: IBAction functions.
    
    @IBAction func buttonTapped(sender: UIButton) {
        switch sender {
        case numberButton:
            play(.Number)
            
        case fizzButton:
            play(.Fizz)
            
        case buzzButton:
            play(.Buzz)
            
        default:
            play(.FizzBuzz)
        }
        
    }
    
}

