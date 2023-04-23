// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let section = try? JSONDecoder().decode(Section.self, from: jsonData)

import Foundation

// MARK: - Section
struct Section: Codable {
    let data: [Datum]?
}

// MARK: - Datum
struct Datum: Codable {
    let cardStories: [CardStory]?
    let id: Int?
    let title: String?
    let cashbacks: [Cashback]?
    let operations: [Operation]?
    let creditCards: [CreditCard]?
    let allCredits: [AllCredit]?
    let addProduct: [AddProduct]?
}

// MARK: - AddProduct
struct AddProduct: Codable {
    let product: Product?
}

// MARK: - Product
struct Product: Codable {
    let title: String?
}

// MARK: - AllCredit
struct AllCredit: Codable {
    let credit: Credit?
}

// MARK: - Credit
struct Credit: Codable {
    let image, amount, title: String?
}

// MARK: - CardStory
struct CardStory: Codable {
    let story: Story?
}

// MARK: - Story
struct Story: Codable {
    let image: String?
}

// MARK: - Cashback
struct Cashback: Codable {
    let firstCashback, secondCashback, thirdCashback: FirstCashbackClass?
}

// MARK: - FirstCashbackClass
struct FirstCashbackClass: Codable {
    let image, amount: String?
}

// MARK: - CreditCard
struct CreditCard: Codable {
    let card: Card?
}

// MARK: - Card
struct Card: Codable {
    let imageCard, amountCard, titleCard: String?
}

// MARK: - Operation
struct Operation: Codable {
    let firstOperation, secondOperation, thirdOperation: FirstOperationClass?
}

// MARK: - FirstOperationClass
struct FirstOperationClass: Codable {
    let image, title: String?
}
