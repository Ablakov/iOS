import UIKit

class ScoreBoardTableViewCell: UITableViewCell {

    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var usernameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    func setScoreBoardCell(username: Player, score: Player){
        scoreLabel.text = String(score.score)
        
        usernameLabel.text = username.username
    }
}
