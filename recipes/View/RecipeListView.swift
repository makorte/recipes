import SwiftUI

struct RecipeListView: View {
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        NavigationView {
            List(model.recipes) { recipe in
                NavigationLink(destination: RecipeDetailView(recipe: recipe), label: {
                    HStack(spacing: 10.0) {
                        Image(recipe.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 45, height: 30, alignment: .center)
                            .clipped()
                            .cornerRadius(3)
                            .padding(7.5)
                        Text(recipe.name)
                            .font(.subheadline)
                    }
                })
            }.navigationBarTitle("recipes")
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
