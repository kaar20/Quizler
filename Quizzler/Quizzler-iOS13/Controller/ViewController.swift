import UIKit
class ViewController: UIViewController {
    var quizBrain=QuizBrain()
  
    var timer=Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    @IBAction func destButton(_ sender: UIButton) {
        timer.invalidate()
        let userAnswer=sender.currentTitle
        let actualAnswer=quizBrain.checkAnswer(userAnswer:userAnswer!)
        if actualAnswer
        {
            sender.backgroundColor=UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
        }
        quizBrain.nextQuestion()
          Timer.scheduledTimer(timeInterval:0.2,
                                target: self,
                                    selector: #selector(updateUI),
                                    userInfo: nil,
                                     repeats: false)
    }
    
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
   @objc func updateUI(){
       questionLabel.text=quizBrain.getQuestion()
        falseButton.backgroundColor=UIColor.clear
        trueButton.backgroundColor=UIColor.clear
       progressBar.progress=quizBrain.getProgress()
       score.text="Score: \(quizBrain.getScore())"
    }
}

