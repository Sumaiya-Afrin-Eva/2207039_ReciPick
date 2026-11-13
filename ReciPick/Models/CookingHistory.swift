
import Foundation
import FirebaseFirestore

struct CookingHistoryEntry: Identifiable {

    let id: String
    let recipeID: String
    let cookedAt: Date

    init?(document: QueryDocumentSnapshot) {

        let data = document.data()

        guard let recipeID = data["recipeID"] as? String else {
            return nil
        }

        self.id = document.documentID
        self.recipeID = recipeID
        self.cookedAt =
            (data["cookedAt"] as? Timestamp)?.dateValue() ?? Date()
    }
}

