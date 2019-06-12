import Foundation
class Player {
    
    var username: String = ""
    var score: Int = 0
    
    
    init( score: Int,username: String ){

        self.score = score
        self.username = username
        
    }
}
