//
//  ResultViewController.swift
//  QuestionsApp
//
//  Created by Rayana Prata Neves on 18/09/21.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultView: UIView!
    
    let countCorrects: Int
    let totalCorrect: Int
    
    init(countCorrects: Int, totalCorrect: Int) {
        self.countCorrects = countCorrects
        self.totalCorrect = totalCorrect
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
<<<<<<< Updated upstream

        title = "Perguntas e Respostas"
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.46, green: 0.55, blue: 1.00, alpha: 1.00)
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        resultView.layer.cornerRadius = 30
=======
        setupUI()
>>>>>>> Stashed changes
    }
    
    @IBAction func handlerButtonTryAgain(_ sender: Any) {
        let viewController = HomeViewController()
        present(viewController, animated: true, completion: nil)
    }
    
    private func setupUI() {
        title = "Perguntas e respostas"
        labelResult.text = "\(countCorrects)/\(totalCorrect) Acertos"
        resultView.layer.cornerRadius = 30
    }
    
}
