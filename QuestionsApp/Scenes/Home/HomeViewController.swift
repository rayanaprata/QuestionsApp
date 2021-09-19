//
//  HomeViewController.swift
//  QuestionsApp
//
//  Created by Rayana Prata Neves on 18/09/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var startView: UIView!
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Perguntas e Respostas"
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.46, green: 0.55, blue: 1.00, alpha: 1.00)
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationItem.backButtonTitle = ""

        startView.layer.cornerRadius = 30
        startButton.layer.cornerRadius = 30
    }
    
    @IBAction func handlerButtonStartQuiz(_ sender: Any) {
        let viewController = QuestionViewController()
        navigationController?.pushViewController(viewController, animated: true)
//        present(viewController, animated: true, completion: nil)
    }
    
}
