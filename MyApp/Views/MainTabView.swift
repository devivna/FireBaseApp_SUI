
import SwiftUI

struct MainTabView: View {
        
    @State var selectedTab: SelectedTabView = .readingNow
    
    enum SelectedTabView {
        case readingNow, library, bookStore, search
    }
    
    var body: some View {
        
        TabView(selection: $selectedTab) {
            ReadingNowView()
                .tabItem {
                    Label("Reading Now", systemImage: "book.fill")
                }
                .tag(SelectedTabView.readingNow)
            
            Text("Library View")
                .tabItem {
                    Label("Library", systemImage: "books.vertical.fill")
                }
                .tag(SelectedTabView.library)
            
            Text("Book Store")
                .tabItem {
                    Label("Book Store", systemImage: "bag.fill")
                }
                .tag(SelectedTabView.bookStore)
            
            Text("Search View")
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
                .tag(SelectedTabView.search)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

