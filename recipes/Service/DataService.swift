import Foundation

class DataService {
    static func getLocalData() -> [Recipe] {
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard pathString != nil else {
            return [Recipe]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            let recipeData = try JSONDecoder().decode([Recipe].self, from: data)
            for recipe in recipeData {
                recipe.id = UUID()
            }
            
            return recipeData
        } catch {
            print(error)
        }
        
        return [Recipe]()
    }
}
