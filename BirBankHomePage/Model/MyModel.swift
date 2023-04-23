//
//  MyModel.swift
//  BirBankHomePage
//
//  Created by Fikrat on 23.04.23.

//   let model = try? JSONDecoder().decode(Model.self, from: jsonData)

import Foundation

// MARK: - ModelElement
struct MyModel: Codable {
    let storiesImage: String?
    let cashback: Cashback?
    let operations: Operations?
    let cardList: CardList?
    let creditList: CreditList?
}

// MARK: - CardList
struct CardList: Codable {
    let cardAmount, cardName, cardImage: String?
}

// MARK: - Cashback
struct Cashback: Codable {
    let amount, image: String?
}

// MARK: - CreditList
struct CreditList: Codable {
    let creditName, creditAmount: String?
}

// MARK: - Operations
struct Operations: Codable {
    let item: String?
    let title: [String]?
}

//typealias Model = [ModelElement]

