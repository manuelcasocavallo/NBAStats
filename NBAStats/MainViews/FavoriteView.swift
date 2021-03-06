//
//  FavoriteView.swift
//  NBA Stats
//
//  Created by Manuel Casocavallo on 05/07/21.
//

import SwiftUI

struct FavoriteView: View {
    @State private var favoriteTeam: Teams = .AtlantaHawks
    
    var body: some View {
        VStack {
            HeaderView(text: "Favorite Team")
                .padding()
            
            Spacer()
            
            Text("Your favorite team is:")
                .font(.title2)
                .bold()
            VStack {
                teamsDict[favoriteTeam.rawValue]!
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                    .padding()
                Text(favoriteTeam.rawValue)
                    .font(.title)
                    .bold()
            }
            
            Picker("Team", selection: $favoriteTeam) {
                ForEach(Teams.allCases) {
                    Text($0.rawValue).tag($0)
                }
            }
            .pickerStyle(InlinePickerStyle())
            
            Spacer()
        }
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static let favoriteTeam = Teams.LosAngelesLakers
    static var previews: some View {
        FavoriteView()
    }
}
