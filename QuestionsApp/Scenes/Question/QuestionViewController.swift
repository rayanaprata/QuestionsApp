//
//  QuestionViewController.swift
//  QuestionsApp
//
//  Created by Rayana Prata Neves on 18/09/21.
//

import UIKit

class QuestionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
<<<<<<< Updated upstream
        
    let question = QuestionModel(question: "Qual nome do gato da Rayana?",
                                  answer: [
                                    "Amora",
                                    "Sushi",
                                    "Pizza",
                                    "Ameixa"
                                  ],
                                  answerCorrect: 1)
    
    var questionSelected: Int?
    var indexSelected: IndexPath?
=======
    
    var questions: [QuestionModel]
    var indexQuestion: Int = 0
    var countCorrectsAnswer = 0
>>>>>>> Stashed changes
    
    @IBOutlet weak var questionButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var labelQuestion: UILabel!
    
<<<<<<< Updated upstream
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
=======
    init(questions: [QuestionModel]) {
        self.questions = questions
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
>>>>>>> Stashed changes
        setupUI()
    }
    
    @IBAction func handlerButtonAnswer(_ sender: Any) {
<<<<<<< Updated upstream
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
            questionButton.setTitle("Próxima pergunta", for: .normal)
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
=======
        
        if questions[indexQuestion].isAnswer {
            // Executar a açao do botao Prox Perg
            
            indexQuestion += 1
            
            if indexQuestion < questions.count {
                updateLayout()
            } else {
                let viewController = ResultViewController(countCorrects: countCorrectsAnswer, total: questions.count)
                navigationController?.pushViewController(viewController, animated: true)
            }

            questionButton.setTitle("Responder", for: .normal)
            
        } else {
            
            //Acontece quando clica no bota responder
            
            for indexAnswer in 0..<questions[indexQuestion].answer.count {
                if indexAnswer == questions[indexQuestion].answerCorrect {
                    if questions[indexQuestion].answer[indexAnswer].style == .selected {
                        countCorrectsAnswer += 1
                    }
                    questions[indexQuestion].answer[indexAnswer].style = .correct
                } else if questions[indexQuestion].answer[indexAnswer].style == .selected {
                    questions[indexQuestion].answer[indexAnswer].style = .incorrect
                }
            }
            
            tableView.reloadData()
            questions[indexQuestion].isAnswer = true
            questionButton.setTitle("Próxima Pergunta", for: .normal)
        }
        
    }
    
    func updateLayout() {
        labelQuestion.text = questions[indexQuestion].title
        tableView.reloadData()
    }
    
    func setupUI() {
        title = "Perguntas e respostas"
        navigationItem.backButtonTitle = ""
        
        //setando a pergunta no layout
        labelQuestion.text = questions[indexQuestion].title
        
        questionButton.layer.cornerRadius = 30
        
        tableView.register(UINib(nibName: "AnswerCell", bundle: nil), forCellReuseIdentifier: "AnswerCell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questions[indexQuestion].answer.count
>>>>>>> Stashed changes
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
<<<<<<< Updated upstream
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
=======
        let answer = questions[indexQuestion].answer[indexPath.row]
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AnswerCell") as? AnswerCell {
            cell.setup(model: answer)
            return cell
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if questions[indexQuestion].isAnswer {
            return
        }
        
        for indexAnswer in 0..<questions[indexQuestion].answer.count {
            questions[indexQuestion].answer[indexAnswer].style = indexAnswer == indexPath.row ? .selected : .blank
        }
        
        tableView.reloadData()
        
>>>>>>> Stashed changes
    }
    
}
