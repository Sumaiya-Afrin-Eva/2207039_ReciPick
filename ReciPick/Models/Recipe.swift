
import Foundation

struct Recipe: Identifiable, Codable {

    let id: String
    let name: String
    let category: String
    let ingredients: [String]
    let instructions: [String]
    let cookingTime: Int
    let difficulty: String

}

