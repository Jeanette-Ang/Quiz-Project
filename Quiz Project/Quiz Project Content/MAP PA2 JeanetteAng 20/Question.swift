//
//  Question.swift
//  MAP PA2 JeanetteAng 20
//
//  Created by Guest User on 3/9/20.
//  Copyright © 2020 ITE. All rights reserved.
//

import Foundation

class Question {
let question : String
let correctAns : String
let ansA : String
let ansB : String

// Constructor : define Question, have correct Answer ( when i start the app what question should i display?
init(question1: String,
     correctAns1: String,
     ansA1: String,
     ansB1: String) {
    question = question1
    correctAns = correctAns1
    ansA = ansA1
    ansB = ansB1
    
   }
}

class QuestionList {
var arrayQuestion = [Question] ()

init() {
    arrayQuestion.append(Question(question1: "Lightning never strikes in the same place twice.", correctAns1: "False", ansA1: "True", ansB1: "False"))
    arrayQuestion.append(Question(question1: "If you cry in space the tears just stick to your face." , correctAns1: "True", ansA1: "True", ansB1: "False"))
    arrayQuestion.append(Question(question1: "If you cut an earthworm in half, both halves can regrow their body." , correctAns1: "False", ansA1: "True", ansB1: "False"))
    arrayQuestion.append(Question(question1: "Humans can distinguish between over a trillion different smells." , correctAns1: "True", ansA1: "True", ansB1: "False"))
    arrayQuestion.append(Question(question1: "Adults have fewer bones than babies do." , correctAns1: "True", ansA1: "True", ansB1: "False"))
    arrayQuestion.append(Question(question1: "Goldfish only have a memory of three seconds." , correctAns1: "False", ansA1: "True", ansB1: "False"))
    arrayQuestion.append(Question(question1: " There are more cells of bacteria in your body than there are human cells.",correctAns1: "True", ansA1: "True", ansB1: "False"))
    arrayQuestion.append(Question(question1: "Your fingernails and hair keep growing after you die." , correctAns1: "False", ansA1: "True", ansB1: "False"))
    arrayQuestion.append(Question(question1: "Birds are dinosaurs.", correctAns1: "True", ansA1: "True", ansB1: "False"))
    arrayQuestion.append(Question(question1: "Humans can’t breathe and swallow at the same time.", correctAns1: "True", ansA1: "True", ansB1: "False"))
    }
}
