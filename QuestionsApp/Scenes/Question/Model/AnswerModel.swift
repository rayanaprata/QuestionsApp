//
//  AnswerModel.swift
//  QuestionsApp
//
//  Created by Rayana Prata Neves on 19/09/21.
//

import Foundation

struct AnswerModel {
    
    enum Style {
        case blank
        case selected
        case correct
        case incorrect
    }
    
    let name: String
    var style: Style
}
