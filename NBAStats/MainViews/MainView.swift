//
//  MainView.swift
//  NBA Stats
//
//  Created by Manuel Casocavallo on 05/07/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            GamesView()
                .tabItem {
                    Label("Games", systemImage: SFSymbols.games)
                }
            StandingsView()
                .tabItem {
                    Label("Standings", systemImage: SFSymbols.standings)
                }
            FavoriteView()
                .tabItem {
                    Label("Favorite", systemImage: SFSymbols.favorites)
                }
        }
        .accentColor(.orange)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
