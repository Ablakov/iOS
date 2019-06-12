import UIKit

class QuizViewController: UIViewController {
    
    
    @IBOutlet weak var questionTitle: UILabel!
    @IBOutlet weak var optionA: UIButton!
    @IBOutlet weak var optionB: UIButton!
    @IBOutlet weak var optionC: UIButton!
    @IBOutlet weak var optionD: UIButton!
    
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0
    static var lastscore: Int  = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateQuestion()
        updateUI()
}
    @objc func enableButton() {
        
        
        
        updatestate()
        
        
        
    }
    func updatestate(){
        
        optionA.backgroundColor = .gray
        optionB.backgroundColor = .gray
        optionC.backgroundColor = .gray
        optionD.backgroundColor = .gray
        optionA.isUserInteractionEnabled = true
        optionB.isUserInteractionEnabled = true
        optionC.isUserInteractionEnabled = true
        optionD.isUserInteractionEnabled = true
        showcorrectAnswer()
        
    }
    func showcorrectAnswer(){
        
        questionNumber += 1
        updateQuestion()
        updateUI()
        
        
    }
    @IBAction func answerPressed(_ sender: UIButton) {
         if sender.tag == selectedAnswer{
            
            
             sender.backgroundColor = .green
            
            _ = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(enableButton), userInfo: nil, repeats: false)
            optionA.isUserInteractionEnabled = false
            optionB.isUserInteractionEnabled = false
            optionC.isUserInteractionEnabled = false
            optionD.isUserInteractionEnabled = false
            
            
            
            score += 1
        }else if (sender as AnyObject).tag != selectedAnswer
        {
            
            sender.backgroundColor = .red
            if(optionA.tag == selectedAnswer ){
                optionA.backgroundColor = .green
            }
            else if(optionB.tag == selectedAnswer ){
                optionB.backgroundColor = .green
            }
            else if(optionC.tag == selectedAnswer ){
                optionC.backgroundColor = .green
            }
            else if(optionD.tag == selectedAnswer ){
                optionD.backgroundColor = .green
            }
            
            _ = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(enableButton), userInfo: nil, repeats: false)
            optionA.isUserInteractionEnabled = false
            optionB.isUserInteractionEnabled = false
            optionC.isUserInteractionEnabled = false
            optionD.isUserInteractionEnabled = false
            
            }
        updateQuestion()
    }
    @objc func updateQuestion(){
        if questionNumber <= allQuestions.list.count - 1{
            imageView.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
            questionTitle.text = allQuestions.list[questionNumber].question
            optionA.setTitle(allQuestions.list[questionNumber].optionA, for: UIControl.State.normal)
            optionB.setTitle(allQuestions.list[questionNumber].optionB, for: UIControl.State.normal)
            optionC.setTitle(allQuestions.list[questionNumber].optionC, for: UIControl.State.normal)
            optionD.setTitle(allQuestions.list[questionNumber].optionD, for: UIControl.State.normal)
            selectedAnswer = allQuestions.list[questionNumber].correctAnswer
        }
        updateUI()
    }
    func updateUI(){
        scoreLabel.text = "Score: \(score)"
        questionCounter.text = "\(questionNumber + 1)/\(allQuestions.list.count)"
    }
    func restartQuiz(){
        score = 0
        questionNumber = 0
        updateQuestion()
        
    }
}
