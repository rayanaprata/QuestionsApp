//
//  QuestionViewController.swift
//  QuestionsApp
//
//  Created by Rayana Prata Neves on 18/09/21.
//

import UIKit

class QuestionViewController: UIViewController, UITableViewDataSource {
        
    @IBOutlet weak var questionButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Perguntas e Respostas"
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.46, green: 0.55, blue: 1.00, alpha: 1.00)
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationItem.leftBarButtonItem?.tintColor = UIColor.white
        navigationItem.backBarButtonItem?.tintColor = UIColor.white
        navigationItem.backButtonTitle = ""
        
        questionButton.layer.cornerRadius = 30
        setupUI()
    }
    
    func setupUI() {
        tableView.register(UINib(nibName: "AnswerCell", bundle: nil), forCellReuseIdentifier: "AnswerCell")
        tableView.dataSource = self
        tableView.reloadData() // esse reloadData vai fazer a tabela disparar os métodos de data source dela (métodos de construção) -> esses métodos só são chamados quando é chamado esse reloadData
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AnswerCell") as? AnswerCell {
            cell.setup(title: "Resposta", style: .correct)
            return cell
        }
        
        return UITableViewCell() // apenas uma garantia pro caso dele nao conseguir pegar a cell anterior
    }
    
    @IBAction func handlerButtonNextPage(_ sender: Any) {
        let viewController = ResultViewController()
        present(viewController, animated: true, completion: nil)
    }
}
