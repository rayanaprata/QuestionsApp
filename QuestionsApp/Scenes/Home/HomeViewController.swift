//
//  HomeViewController.swift
//  QuestionsApp
//
//  Created by Rayana Prata Neves on 18/09/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    let question1 = QuestionModel(title: "Em que planeta voce vive?",
                                answer: [
                                    AnswerModel(name: "Mercurio", style: .blank),
                                    AnswerModel(name: "Terra", style: .blank),
                                    AnswerModel(name: "Saturno", style: .blank),
                                    AnswerModel(name: "Urano", style: .blank),
                                ],
                                answerCorrect: 1)
    
    let question2 = QuestionModel(title: "Outra pergunta",
                                answer: [
                                    AnswerModel(name: "AAAA", style: .blank),
                                    AnswerModel(name: "BBBB", style: .blank),
                                    AnswerModel(name: "CCCC", style: .blank),
                                    AnswerModel(name: "DDDD", style: .blank),
                                ],
                                answerCorrect: 1)
    
    let question3 = QuestionModel(title: "Mais uma pergunta",
                                answer: [
                                    AnswerModel(name: "1111", style: .blank),
                                    AnswerModel(name: "2222", style: .blank),
                                    AnswerModel(name: "3333", style: .blank),
                                    AnswerModel(name: "4444", style: .blank),
                                ],
                                answerCorrect: 1)
    
//    let question4 = QuestionModel(title: "Em que planeta voce vive?",
//                                answer: [
//                                    AnswerModel(name: "Mercurio", style: .blank),
//                                    AnswerModel(name: "Terra", style: .blank),
//                                    AnswerModel(name: "Saturno", style: .blank),
//                                    AnswerModel(name: "Urano", style: .blank),
//                                ],
//                                answerCorrect: 1)
//
//    let question5 = QuestionModel(title: "Em que planeta voce vive?",
//                                answer: [
//                                    AnswerModel(name: "Mercurio", style: .blank),
//                                    AnswerModel(name: "Terra", style: .blank),
//                                    AnswerModel(name: "Saturno", style: .blank),
//                                    AnswerModel(name: "Urano", style: .blank),
//                                ],
//                                answerCorrect: 1)
//
//    let question6 = QuestionModel(title: "Em que planeta voce vive?",
//                                answer: [
//                                    AnswerModel(name: "Mercurio", style: .blank),
//                                    AnswerModel(name: "Terra", style: .blank),
//                                    AnswerModel(name: "Saturno", style: .blank),
//                                    AnswerModel(name: "Urano", style: .blank),
//                                ],
//                                answerCorrect: 1)
//
//    let question7 = QuestionModel(title: "Em que planeta voce vive?",
//                                answer: [
//                                    AnswerModel(name: "Mercurio", style: .blank),
//                                    AnswerModel(name: "Terra", style: .blank),
//                                    AnswerModel(name: "Saturno", style: .blank),
//                                    AnswerModel(name: "Urano", style: .blank),
//                                ],
//                                answerCorrect: 1)
//
//    let question8 = QuestionModel(title: "Em que planeta voce vive?",
//                                answer: [
//                                    AnswerModel(name: "Mercurio", style: .blank),
//                                    AnswerModel(name: "Terra", style: .blank),
//                                    AnswerModel(name: "Saturno", style: .blank),
//                                    AnswerModel(name: "Urano", style: .blank),
//                                ],
//                                answerCorrect: 1)
//
//    let question9 = QuestionModel(title: "Em que planeta voce vive?",
//                                  answer: [
//                                      AnswerModel(name: "Mercurio", style: .blank),
//                                      AnswerModel(name: "Terra", style: .blank),
//                                      AnswerModel(name: "Saturno", style: .blank),
//                                      AnswerModel(name: "Urano", style: .blank),
//                                  ],
//                                  answerCorrect: 1)
//
//    let question10 = QuestionModel(title: "Em que planeta voce vive?",
//                                answer: [
//                                    AnswerModel(name: "Mercurio", style: .blank),
//                                    AnswerModel(name: "Terra", style: .blank),
//                                    AnswerModel(name: "Saturno", style: .blank),
//                                    AnswerModel(name: "Urano", style: .blank),
//                                ],
//                                answerCorrect: 1)
    
    lazy var questions: [QuestionModel] = [
        question1,
        question2,
        question3//,
//        question4,
//        question5,
//        question6,
//        question7,
//        question8,
//        question9,
//        question10
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
        title = "Perguntas e Respostas"
        labelDescription.text = "Responda \(questions.count) perguntas e veja sua pontuação no fim"
        startView.layer.cornerRadius = 30
        startButton.layer.cornerRadius = 30
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.46, green: 0.55, blue: 1.00, alpha: 1.00)
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationItem.backButtonTitle = ""
    }
    
}
