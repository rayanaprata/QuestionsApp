//
//  ResultViewController.swift
//  QuestionsApp
//
//  Created by Rayana Prata Neves on 18/09/21.
//

import UIKit

class ResultViewController: UIViewController {

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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    @IBAction func handlerButtonTryAgain(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    private func setupUI() {
        title = "Perguntas e respostas"
        labelResult.text = "\(countCorrects)/\(total) Acertos"
        resultView.layer.cornerRadius = 30
    }
    
}
