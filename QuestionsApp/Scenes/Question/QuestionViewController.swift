//
//  QuestionViewController.swift
//  QuestionsApp
//
//  Created by Rayana Prata Neves on 18/09/21.
//

import UIKit

<<<<<<< Updated upstream
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
    
=======
class QuestionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var questions: [QuestionModel]
    var indexQuestion: Int = 0
    var countCorrectsAnswer: Int = 0
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var labelQuestion: UILabel!
    @IBOutlet weak var questionButton: UIButton!
    
    init(questions: [QuestionModel]) {
        self.questions = questions
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    @IBAction func handlerButtonAnswer(_ sender: Any) {
                
        if questions[indexQuestion].isAnswer {
            indexQuestion += 1
            if indexQuestion < questions.count {
                updateLayout()
            } else {
                let viewController = ResultViewController(countCorrects: countCorrectsAnswer, totalCorrect: questions.count)
                navigationController?.pushViewController(viewController, animated: true)
            }
        
            questionButton.backgroundColor = UIColor(red: 0.83, green: 0.83, blue: 0.83, alpha: 1.00)
            questionButton.setTitle("Responder", for: .normal)

        } else {
                        
            for indexAnswer in 0..<questions[indexQuestion].answer.count {
                
                if indexAnswer == questions[indexQuestion].answerCorrect {
                    if questions[indexQuestion].answer[indexAnswer].style == .selected {
                        countCorrectsAnswer += 1
                    }
                    print(countCorrectsAnswer)
                    questions[indexQuestion].answer[indexAnswer].style = .correct
                }
                else if questions[indexQuestion].answer[indexAnswer].style == .selected {
                    questions[indexQuestion].answer[indexAnswer].style = .incorrect
                }
                
            }
        }
        
        tableView.reloadData()
        questions[indexQuestion].isAnswer = true
        questionButton.setTitle("Próxima pergunta", for: .normal)
    }
    
    func updateLayout() {
        labelQuestion.text = questions[indexQuestion].title
        tableView.reloadData()
    }
    
>>>>>>> Stashed changes
    func setupUI() {
        title = "Perguntas e Respostas"
        navigationItem.backButtonTitle = ""
        questionButton.layer.cornerRadius = 30
        tableView.register(UINib(nibName: "AnswerCell", bundle: nil), forCellReuseIdentifier: "AnswerCell")
        tableView.dataSource = self
        tableView.reloadData() // esse reloadData vai fazer a tabela disparar os métodos de data source dela (métodos de construção) -> esses métodos só são chamados quando é chamado esse reloadData
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
<<<<<<< Updated upstream
        return 4
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AnswerCell") as? AnswerCell {
            cell.setup(title: "Resposta", style: .correct)
=======
        return questions[indexQuestion].answer.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let answer = questions[indexQuestion].answer[indexPath.row]
        if let cell = tableView.dequeueReusableCell(withIdentifier: "AnswerCell") as? AnswerCell {
            cell.setup(model: answer)
>>>>>>> Stashed changes
            return cell
        }
        return UITableViewCell()
    }
    
<<<<<<< Updated upstream
    @IBAction func handlerButtonNextPage(_ sender: Any) {
        let viewController = ResultViewController()
        present(viewController, animated: true, completion: nil)
=======
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if questions[indexQuestion].isAnswer {
            return
        }
        
        for indexAnswer in 0..<questions[indexQuestion].answer.count {
            questions[indexQuestion].answer[indexAnswer].style = indexAnswer == indexPath.row ? .selected : .blank
        }
        
        questionButton.backgroundColor = UIColor(red: 0.52, green: 0.59, blue: 1.00, alpha: 1.00)
        tableView.reloadData()
>>>>>>> Stashed changes
    }
}
