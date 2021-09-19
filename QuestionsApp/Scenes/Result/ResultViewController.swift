//
//  ResultViewController.swift
//  QuestionsApp
//
//  Created by Rayana Prata Neves on 18/09/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Perguntas e Respostas"
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.46, green: 0.55, blue: 1.00, alpha: 1.00)
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        resultView.layer.cornerRadius = 30
    }
    
    @IBAction func handlerButtonTryAgain(_ sender: Any) {
        let viewController = HomeViewController()
        present(viewController, animated: true, completion: nil)
    }
    
}
