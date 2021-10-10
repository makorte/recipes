import SwiftUI

struct RecipeTabView: View {
    @State var tabIndex = 1
    
    var body: some View {
        TabView (selection: $tabIndex) {
            RecipeFeaturedView()
                .tabItem({
                    VStack {
                        Image(systemName: "star")
                        Text("Featured")
                    }
                })
                .tag(0)
            
            RecipeListView()
                .tabItem({
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("all Recipes")
                    }
                })
                .tag(1)
        }.environmentObject(RecipeModel())
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
