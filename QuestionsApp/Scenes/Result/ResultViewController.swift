//
//  ResultViewController.swift
//  QuestionsApp
//
//  Created by Rayana Prata Neves on 18/09/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultView: UIView!
    @IBOutlet weak var labelResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let numCorrectAnswers = 10
        labelResult.text = "\(numCorrectAnswers)/10 Acertos"
        
        title = "Perguntas e Respostas"
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.46, green: 0.55, blue: 1.00, alpha: 1.00)
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        resultView.layer.cornerRadius = 30
    }
    
    @IBAction func handlerButtonTryAgain(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
