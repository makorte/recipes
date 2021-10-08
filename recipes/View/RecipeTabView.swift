import SwiftUI

struct RecipeTabView: View {
    @State var tabIndex = 1
    
    var body: some View {
        TabView (selection: $tabIndex) {
            Text("Featured View")
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
        }
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
