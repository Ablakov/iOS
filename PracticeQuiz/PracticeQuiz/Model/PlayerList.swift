import Foundation

import UIKit
class PlayerList{
    var table: [Player] = []
    var player1 = Player(score: QuizViewController.lastscore, username: "\(FrontViewController.str)")
    
        init(){
        
        table.append(player1)
    }
    
}
