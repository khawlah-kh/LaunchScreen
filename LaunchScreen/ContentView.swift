

import SwiftUI

struct ContentView: View {
    init() {
            //Use this if NavigationBarTitle is with Large Font
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(named: "AccentColor")!]

            //Use this if NavigationBarTitle is with displayMode = .inline
            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(named: "AccentColor")!]
        }

    var body: some View {
        NavigationView {
            TabView {
                SingleTabView(imageName: "1.circle",
                              tabTitle: "Tab 1",
                              index: 0)
                SingleTabView(imageName: "2.circle",
                              tabTitle: "Tab 2",
                              index: 1)
                SingleTabView(imageName: "3.circle",
                              tabTitle: "Tab 3",
                              index: 2)
            }
            .navigationTitle("Launch Screen")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button(action: {}) {
                        Image(systemName: "gear")
                            .font(.largeTitle)
                    }
                }
            }
        }
    }
}


struct SingleTabView: View {
    var imageName: String
    var tabTitle: String
    var index: Int
    var body: some View {

        ZStack {
            Color("Background")
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 200, height: 200)

               
            }
            .foregroundColor(.accentColor)
        }
        .tabItem {
            Image(systemName: imageName)
            Text(tabTitle)
        }.tag(index)
    }

}
