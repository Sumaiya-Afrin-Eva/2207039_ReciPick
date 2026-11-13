
import Foundation
import FirebaseFirestore

struct Ingredient: Identifiable {

    let id: String
    let name: String

    init?(document: QueryDocumentSnapshot) {

        let data = document.data()

        guard let name = data["name"] as? String else {
            return nil
        }

        self.id = document.documentID
        self.name = name
    }
}
