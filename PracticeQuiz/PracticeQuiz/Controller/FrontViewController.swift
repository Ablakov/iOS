import UIKit

class FrontViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var startButton: UIButton!
    
    static var str: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func startButtonPressed(_ sender: Any) {
        if usernameField.text != "" {
            let controller = self.storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as! QuizViewController
            self.present(controller, animated: true)
        }
        else {
            let alert = UIAlertController(title: "Error", message: "Fill out your name", preferredStyle: .alert)
            let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
    }
}
