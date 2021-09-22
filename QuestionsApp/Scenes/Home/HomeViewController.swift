//
//  HomeViewController.swift
//  QuestionsApp
//
//  Created by Rayana Prata Neves on 18/09/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    var question1 = QuestionModel(title: "Swift is a powerful and intuitive general-purpose programming language developed by Apple. When did your development start?",
                                  answer: [
                                    AnswerModel(name: "Started in August 2009", style: .blank),
                                    AnswerModel(name: "Started in July 2010", style: .blank),
                                    AnswerModel(name: "Started in April 2011", style: .blank),
                                    AnswerModel(name: "Started in June 2010", style: .blank),
                                  ],
                                  answerCorrect: 1)
    
    var question2 = QuestionModel(title: "Which of the following statements about comments on Swift is correct?",
                                  answer: [
                                    AnswerModel(name: "Single line comments are created using //", style: .blank),
                                    AnswerModel(name: "Multiline comments are created using ;;", style: .blank),
                                    AnswerModel(name: "Single line comments are created using \\", style: .blank),
                                    AnswerModel(name: "None of the previous answers", style: .blank),
                                  ],
                                  answerCorrect: 0)
    
    var question3 = QuestionModel(title: "How to declare a constant in swift?",
                                  answer: [
                                    AnswerModel(name: "con", style: .blank),
                                    AnswerModel(name: "lets", style: .blank),
                                    AnswerModel(name: "const", style: .blank),
                                    AnswerModel(name: "let", style: .blank),
                                  ],
                                  answerCorrect: 3)
    
    lazy var questions: [QuestionModel] = [
        question1,
        question2,
        question3
    ]

    @IBOutlet weak var startView: UIView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var labelDescription: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        setupUI()
    }
    
    @IBAction func handlerButtonStartQuiz(_ sender: Any) {
        let viewController = QuestionViewController(questions: questions)
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func setupUI() {
        
        title = "Perguntas e respostas"
        labelDescription.text = "Responda \(questions.count) perguntas e veja sua pontuação no fim!"
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.46, green: 0.55, blue: 1.00, alpha: 1.00)
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationItem.backButtonTitle = ""

        startView.layer.cornerRadius = 30
        startButton.layer.cornerRadius = 30
        
    }
    
}
