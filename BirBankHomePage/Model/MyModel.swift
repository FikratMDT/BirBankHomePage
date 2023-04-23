//// This file was generated from JSON Schema using quicktype, do not modify it directly.
//// To parse the JSON, add this file to your project and do:
////
////   let section = try? JSONDecoder().decode(Section.self, from: jsonData)
//
//import Foundation
//
//// MARK: - SectionElement
//struct SectionElement: Codable {
//    let stories: [StoryElement]?
//    let id: Int?
//    let title: String?
//    let cashbacks: [CashbackElement]?
//    let operations: [Operation]?
//    let cards: [CardElement]?
//    let credits: [CreditElement]?
//    let products: [ProductElement]?
//}
//
//// MARK: - CardElement
//struct CardElement: Codable {
//    let card: CardCard?
//}
//
//// MARK: - CardCard
//struct CardCard: Codable {
//    let imageCard, amountCard, titleCard: String?
//}
//
//// MARK: - CashbackElement
//struct CashbackElement: Codable {
//    let cashback: CashbackCashback?
//}
//
//// MARK: - CashbackCashback
//struct CashbackCashback: Codable {
//    let image, amount: String?
//}
//
//// MARK: - CreditElement
//struct CreditElement: Codable {
//    let credit: CreditCredit?
//}
//
//// MARK: - CreditCredit
//struct CreditCredit: Codable {
//    let image, amount, title: String?
//}
//
//// MARK: - Operation
//struct Operation: Codable {
//    let operations: Operations?
//}
//
//// MARK: - Operations
//struct Operations: Codable {
//    let image, title: String?
//}
//
//// MARK: - ProductElement
//struct ProductElement: Codable {
//    let product: ProductProduct?
//}
//
//// MARK: - ProductProduct
//struct ProductProduct: Codable {
//    let title: String?
//}
//
//// MARK: - StoryElement
//struct StoryElement: Codable {
//    let story: StoryStory?
//}
//
//// MARK: - StoryStory
//struct StoryStory: Codable {
//    let image: String?
//}
//
//
//
// 
