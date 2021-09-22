//
//  AnswerCell.swift
//  QuestionsApp
//
//  Created by Rayana Prata Neves on 18/09/21.
//

import UIKit

class AnswerCell: UITableViewCell {
    
    enum Style {
        case blank
        case selected
        case correct
        case incorrect
    }
    
    var style: Style = .blank

    @IBOutlet weak var viewBackground: UIView!
    @IBOutlet weak var labelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
<<<<<<< Updated upstream
    func setup (title: String, style: Style) {
        labelTitle.text = title
        viewBackground.layer.cornerRadius = 20
        viewBackground.layer.borderWidth = 1
        setStyle(style)
    }
    
    func setStyle(_ style: Style) {
        switch style {
        case .blank:
=======
    func setup (model: AnswerModel) {
        labelName.text = model.name
        
        viewBackground.layer.cornerRadius = 20
        viewBackground.layer.borderWidth = 1
        
        setStyle(model.style)
    }
    
    func setStyle(_ style: AnswerModel.Style) {
        switch style {
        case .blank:
            labelName.textColor = .black
>>>>>>> Stashed changes
            viewBackground.backgroundColor = .white
            viewBackground.layer.borderColor = UIColor(red: 0.83, green: 0.83, blue: 0.83, alpha: 1.00).cgColor
            
        case .selected:
            labelName.textColor = UIColor(red: 0.52, green: 0.59, blue: 1.00, alpha: 1.00)
            viewBackground.backgroundColor = UIColor(red: 0.90, green: 0.91, blue: 1.00, alpha: 1.00)
            viewBackground.layer.borderColor = UIColor(red: 0.52, green: 0.59, blue: 1.00, alpha: 1.00).cgColor
        
        case .correct:
            labelName.textColor = UIColor(red: 0.22, green: 0.77, blue: 0.24, alpha: 1.00)
            viewBackground.backgroundColor = UIColor(red: 0.90, green: 1.00, blue: 0.90, alpha: 1.00)
            viewBackground.layer.borderColor = UIColor(red: 0.22, green: 0.77, blue: 0.24, alpha: 1.00).cgColor
        
        case .incorrect:
            labelName.textColor = UIColor.red
            viewBackground.backgroundColor = UIColor(red: 1.00, green: 0.84, blue: 0.84, alpha: 1.00)
            viewBackground.layer.borderColor = UIColor.red.cgColor
            
        }
    }
<<<<<<< Updated upstream
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        viewBackground.backgroundColor = selected ? UIColor(red: 0.90, green: 0.91, blue: 1.00, alpha: 1.00) : .white
        viewBackground.layer.borderColor = selected ? UIColor(red: 0.52, green: 0.59, blue: 1.00, alpha: 1.00).cgColor : UIColor(red: 0.83, green: 0.83, blue: 0.83, alpha: 1.00).cgColor
        labelTitle.textColor = selected ? UIColor(red: 0.52, green: 0.59, blue: 1.00, alpha: 1.00) : .black
    }
=======

>>>>>>> Stashed changes
    
}
