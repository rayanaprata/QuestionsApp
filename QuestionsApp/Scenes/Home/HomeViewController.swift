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
        
        startView.layer.cornerRadius = 30
        startButton.layer.cornerRadius = 30
    }
    
    @IBAction func handlerButtonStartQuiz(_ sender: Any) {
        let viewController = QuestionViewController()
        present(viewController, animated: true, completion: nil)
    }
    
}
