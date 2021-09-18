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

        resultView.layer.cornerRadius = 30
    }
    
    @IBAction func handlerButtonTryAgain(_ sender: Any) {
        let viewController = HomeViewController()
        present(viewController, animated: true, completion: nil)
    }
    
}
