//
//  QuestionViewController.swift
//  QuestionsApp
//
//  Created by Rayana Prata Neves on 18/09/21.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var answerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        answerButton.layer.cornerRadius = 30
    }

    @IBAction func handlerButtonNextPage(_ sender: Any) {
        let viewController = ResultViewController()
        present(viewController, animated: true, completion: nil)
    }
}
