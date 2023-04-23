// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let sections = try? JSONDecoder().decode(Sections.self, from: jsonData)

import Foundation

// MARK: - Section
struct Section: Decodable {
    let stories: [StoryElement]?
    let id: Int?
    let title: String?
    let cashbacks: [CashbackElement]?
    let operations: [Operation]?
    let cards: [CardElement]?
    let credits: [Credit]?
    let products: [ProductElement]?
}

// MARK: - CardElement
struct CardElement: Decodable {
    let card: CreditClass?
}

// MARK: - CreditClass
struct CreditClass: Decodable {
    let image, amount, title: String?
}

// MARK: - CashbackElement
struct CashbackElement: Decodable {
    let cashback: CashbackCashback?
}

// MARK: - CashbackCashback
struct CashbackCashback: Decodable {
    let image, amount: String?
}

// MARK: - Credit
struct Credit: Decodable {
    let credit: CreditClass?
}

// MARK: - Operation
struct Operation: Decodable {
    let operations: Operations?
}

// MARK: - Operations
struct Operations: Decodable {
    let image, title: String?
}

// MARK: - ProductElement
struct ProductElement: Decodable {
    let product: ProductProduct?
}

// MARK: - ProductProduct
struct ProductProduct: Decodable {
    let title: String?
}

// MARK: - StoryElement
struct StoryElement: Decodable {
    let story: StoryStory?
}

// MARK: - StoryStory
struct StoryStory: Decodable {
    let image: String?
}
