//
//  HomeViewController.swift
//  QuestionsApp
//
//  Created by Rayana Prata Neves on 18/09/21.
//

import UIKit

class HomeViewController: UIViewController {
<<<<<<< Updated upstream
=======
    
    var question1 = QuestionModel(title: "Pergunta 1",
                                  answer: [
                                    AnswerModel(name: "A", style: .blank),
                                    AnswerModel(name: "B", style: .blank),
                                    AnswerModel(name: "C", style: .blank),
                                    AnswerModel(name: "D", style: .blank),
                                  ],
                                  answerCorrect: 0)
    
    var question2 = QuestionModel(title: "Pergunta 2",
                                  answer: [
                                    AnswerModel(name: "A2", style: .blank),
                                    AnswerModel(name: "B2", style: .blank),
                                    AnswerModel(name: "C2", style: .blank),
                                    AnswerModel(name: "D2", style: .blank),
                                  ],
                                  answerCorrect: 0)
    
    var question3 = QuestionModel(title: "Pergunta 3",
                                  answer: [
                                    AnswerModel(name: "A3", style: .blank),
                                    AnswerModel(name: "B3", style: .blank),
                                    AnswerModel(name: "C3", style: .blank),
                                    AnswerModel(name: "D3", style: .blank),
                                  ],
                                  answerCorrect: 0)
    
    lazy var questions: [QuestionModel] = [
        question1,
        question2,
        question3
    ]
>>>>>>> Stashed changes

    @IBOutlet weak var startView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
<<<<<<< Updated upstream
        title = "Perguntas e Respostas"
=======

        
        setupUI()
    }
    
    @IBAction func handlerButtonStartQuiz(_ sender: Any) {
        let viewController = QuestionViewController(questions: questions)
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func setupUI() {
        
        title = "Perguntas e respostas"
        labelDescription.text = "Responda \(questions.count) perguntas e veja sua pontuação no fim!"
>>>>>>> Stashed changes
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.46, green: 0.55, blue: 1.00, alpha: 1.00)
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationItem.backButtonTitle = ""

        startView.layer.cornerRadius = 30
        startButton.layer.cornerRadius = 30
<<<<<<< Updated upstream
    }
    
    @IBAction func handlerButtonStartQuiz(_ sender: Any) {
        let viewController = QuestionViewController()
        navigationController?.pushViewController(viewController, animated: true)
=======
        
>>>>>>> Stashed changes
    }
    
}
