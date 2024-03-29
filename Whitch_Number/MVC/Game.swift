//
//  Game.swift
//  Whitch_Number
//
//  Created by Alexander on 29.03.2024.
//

import Foundation

protocol GameProtocol {
    var score: Int {get}
    
    var isGameEnded: Bool {get}
    
    func restartGame()
    
    func startNewRound()
    
    func calculateScore(with value: Int)
}
