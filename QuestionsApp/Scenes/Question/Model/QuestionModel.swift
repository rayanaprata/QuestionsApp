//
//  QuestionModel.swift
//  QuestionsApp
//
//  Created by Rayana Prata Neves on 22/09/21.
//

import Foundation

struct QuestionModel {
    let title: String
    var answer: [AnswerModel]
    let answerCorrect: Int
    var isAnswer: Bool = false
}
