import SwiftUI

struct RecipeDetailView: View {
    var recipe:Recipe
    
    var body: some View {
        ScrollView {
            Image(recipe.image)
                .resizable()
                .scaledToFill()
            
            HStack {
                Spacer()
                VStack(spacing: 5.0) {
                    Text("prep: \(recipe.prepTime)")
                        .font(.caption)
                        .fontWeight(.light)
                    Text("cook: \(recipe.cookTime)")
                        .font(.caption)
                        .fontWeight(.light)
                }
                Spacer()
                VStack(spacing: 5.0) {
                    Text("total: \(recipe.totalTime)")
                        .font(.caption)
                        .fontWeight(.light)
                    Text("servings: \(recipe.servings)")
                        .font(.caption)
                        .fontWeight(.light)
                }
                Spacer()
            }
            
            VStack(alignment: .leading) {
                Text(recipe.description)
                    .fontWeight(.thin)
                    .multilineTextAlignment(.center)
                    .padding(.top, 1.0)
                
                Text("Ingrediants")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding(.vertical, 1.0)
                
                VStack(alignment: .leading, spacing: 10.0) {
                    ForEach (recipe.ingredients, id: \.self) { ingrediant in
                        Text(ingrediant)
                            .fontWeight(.thin)
                    }
                }
                
                Text("Directions")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .padding(.top, 10.0)
                    .padding(.bottom, 1.0)
                
                VStack(alignment: .leading, spacing: 25.0) {
                    ForEach (recipe.directions, id: \.self) { direction in
                        Text(direction)
                            .fontWeight(.thin)
                            .multilineTextAlignment(.leading)
                    }
                }
            }
            .padding(.horizontal)
            
        }
        .navigationTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[1])
    }
}
