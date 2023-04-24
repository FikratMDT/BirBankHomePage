// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let section = try? JSONDecoder().decode(Section.self, from: jsonData)

import Foundation

// MARK: - Section

struct Section: Codable {
    let cardStories: [Story]?
    let cashbacks: [Cashback]?
    let operations: [Operation]?
    let creditCards: [Card]?
    let allCredits: [Credit]?
    let addProduct: [Product]?
    let id: Int?
    let title: String?
}

// MARK: - Product
struct Product: Codable {
    let title: String?
}


// MARK: - Credit
struct Credit: Codable {
    let image, amount, title: String?
}

// MARK: - Story
struct Story: Codable {
    let image: String?
}

// MARK: - Cashback
struct Cashback: Codable {
    let image, amount: String?
}



// MARK: - Card
struct Card: Codable {
    let imageCard, amountCard, titleCard: String?
}

// MARK: - Operation
struct Operation: Codable {
    let image, title: String?
}
