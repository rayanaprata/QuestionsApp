//
//  QuestionViewController.swift
//  QuestionsApp
//
//  Created by Rayana Prata Neves on 18/09/21.
//

import UIKit

class QuestionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
        
    let question = QuestionModel(question: "Qual nome do gato da Rayana?",
                                  answer: [
                                    "Amora",
                                    "Ameixa",
                                    "Pizza",
                                    "Sushi"
                                  ],
                                  answerCorrect: 3)
    
    var questionSelected: Int?
    var indexSelected: IndexPath?
    
    @IBOutlet weak var questionButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var labelQuestion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Perguntas e Respostas"
        navigationController?.navigationBar.barTintColor = UIColor(red: 0.46, green: 0.55, blue: 1.00, alpha: 1.00)
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.tintColor = UIColor.white
        navigationItem.leftBarButtonItem?.tintColor = UIColor.white
        navigationItem.backBarButtonItem?.tintColor = UIColor.white
        navigationItem.backButtonTitle = ""
        
        labelQuestion.text = question.question
        questionButton.layer.cornerRadius = 30
        setupUI()
    }
    
    @IBAction func handlerButtonAnswer(_ sender: Any) {
        if questionSelected != nil {
                        
            guard let indexSelected = indexSelected else {return}
            let indexCorrected = IndexPath(row: question.answerCorrect, section: 0)
            
            if let cellCorrect = tableView.cellForRow(at: indexCorrected) as? AnswerCell {
                cellCorrect.setStyle(.correct)
            }
            
            if let cellSelected = tableView.cellForRow(at: indexSelected) as? AnswerCell, indexSelected.row != question.answerCorrect {
                cellSelected.setStyle(.incorrect)
            }
            
            questionButton.layer.backgroundColor = UIColor(red: 0.52, green: 0.59, blue: 1.00, alpha: 1.00).cgColor
        }
    }
    
    func setupUI() {
        tableView.register(UINib(nibName: "AnswerCell", bundle: nil), forCellReuseIdentifier: "AnswerCell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData() // esse reloadData vai fazer a tabela disparar os métodos de data source dela (métodos de construção) -> esses métodos só são chamados quando é chamado esse reloadData
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return question.answer.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let answer = question.answer[indexPath.row]
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AnswerCell") as? AnswerCell {
            let style: AnswerCell.Style = .blank
            cell.setup(title: answer, style: style)
            return cell
        }
        
        return UITableViewCell() // apenas uma garantia pro caso dele nao conseguir pegar a cell anterior
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        indexSelected = indexPath
        questionSelected = indexPath.row
    }
    
    
}
