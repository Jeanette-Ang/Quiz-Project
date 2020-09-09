//
//  ViewController.swift
//  MAP PA2 JeanetteAng 20
//
//  Created by Guest User on 3/9/20.
//  Copyright © 2020 ITE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var questionBank = QuestionList()
    var questionNum: NSInteger = 0
    var score: Double = 0.0
    var numOfQuestion: NSInteger = 0
    let totalNumOfQuestions = 10
    
   @IBOutlet weak var txtNumOfQuestion: UILabel!
    @IBOutlet weak var txtScore: UILabel!
    @IBOutlet weak var txtQuestion: UILabel!
    @IBOutlet weak var btnA_outlet: UIButton!
    @IBOutlet weak var btnB_outlet: UIButton!
    
    func restartGame() {
        score = 0.0
        questionNum = 0
        txtScore.text = "Score: \(score)%"
        txtNumOfQuestion.text = "\(questionNum) / 10"
    }
    
    func showPopup() {
        if score < 50{
            print(questionNum)
        let questionNum = Int(score / 10.0)
        let alert = UIAlertController(title: "Quiz", message: "Your Score is \(score)% (\(questionNum) / 10) You have fail the quiz ", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("Try Again?", comment: "Default action"),style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: NSLocalizedString("Exit", comment: "Default action"),style: .default, handler: {(action : UIAlertAction) in

            exit(0);

        }))
        
        
        present(alert, animated: true, completion: nil)
        self.restartGame()
    }
        else {
             let questionNum = Int(score / 10.0)
                   let alert = UIAlertController(title: "Quiz", message: "Your Score is \(score)% (\(questionNum) / 10) You have pass the quiz ", preferredStyle: .alert)
                   alert.addAction(UIAlertAction(title: NSLocalizedString("Try Again?", comment: "Default action"),style: .default, handler: nil))
                   alert.addAction(UIAlertAction(title: NSLocalizedString("Exit", comment: "Default action"),style: .default, handler: {(action : UIAlertAction) in

                       exit(0);

                   }))
                   
                   
                   present(alert, animated: true, completion: nil)
                   self.restartGame()
        }
    }
        
        func changeQuestion() {
        if  questionNum < totalNumOfQuestions - 1 {
                   questionNum = questionNum + 1
               }
               else {
                   questionNum = 0
                   showPopup()
               }
               txtNumOfQuestion.text = "\(questionNum + 1) / 10"
               txtQuestion.text = questionBank.arrayQuestion[questionNum].question
               btnA_outlet.setTitle(questionBank.arrayQuestion[questionNum].ansA, for: .normal)
               btnB_outlet.setTitle(questionBank.arrayQuestion[questionNum].ansB, for: .normal)

    }
    @IBAction func btnA_action(_ sender: Any) {
        if btnA_outlet.titleLabel?.text ==
                questionBank.arrayQuestion[questionNum].correctAns {
                print("Correct!")
                score = score + 10
                txtScore.text = "Score: \(score)%"
            }
            else {
                    print("Wrong")
            }
            changeQuestion()
            
        }
    
    @IBAction func btnB_action(_ sender: Any) {
        if btnB_outlet.titleLabel?.text ==
                questionBank.arrayQuestion[questionNum].correctAns {
                print("Correct!")
                score = score + 10
                txtScore.text = "Score: \(score)%"
            }
            else {
                    print("Wrong")
            print(questionNum)
            }
            changeQuestion()
            
        }
    

        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
            txtQuestion.text = questionBank.arrayQuestion[0].question
            btnA_outlet.setTitle(questionBank.arrayQuestion[0].ansA, for:.normal)
            btnB_outlet.setTitle(questionBank.arrayQuestion[0].ansB, for:.normal)
            
            
        }
}
