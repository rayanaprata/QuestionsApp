//
//  QuestionViewController.swift
//  QuestionsApp
//
//  Created by Rayana Prata Neves on 18/09/21.
//

import UIKit

class QuestionViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var questions: [QuestionModel]
    var indexQuestion: Int = 0
    var countCorrectsAnswer = 0
    
    @IBOutlet weak var questionButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var labelQuestion: UILabel!
    
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
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
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
        
    }
    
}
