//
//  ResultViewController.swift
//  QuestionsApp
//
//  Created by Rayana Prata Neves on 18/09/21.
//

import UIKit

class ResultViewController: UIViewController {

<<<<<<< Updated upstream
    @IBOutlet weak var resultView: UIView!
    @IBOutlet weak var labelResult: UILabel!
=======
    let countCorrects: Int
    let total: Int
    
    @IBOutlet weak var resultView: UIView!
    @IBOutlet weak var labelResult: UILabel!
    
    init(countCorrects: Int, total: Int) {
        self.countCorrects = countCorrects
        self.total = total
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
>>>>>>> Stashed changes
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
<<<<<<< Updated upstream
        let numCorrectAnswers = 10
        labelResult.text = "\(numCorrectAnswers)/10 Acertos"
        
        title = "Perguntas e Respostas"
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.46, green: 0.55, blue: 1.00, alpha: 1.00)
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        resultView.layer.cornerRadius = 30
=======
        setupUI()
>>>>>>> Stashed changes
    }
    
    @IBAction func handlerButtonTryAgain(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
<<<<<<< Updated upstream
=======
    }
    
    private func setupUI() {
        title = "Perguntas e respostas"
        labelResult.text = "\(countCorrects)/\(total) Acertos"
        resultView.layer.cornerRadius = 30
>>>>>>> Stashed changes
    }
    
}
