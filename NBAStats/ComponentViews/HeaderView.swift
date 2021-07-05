//
//  HeaderView.swift
//  NBAStats
//
//  Created by Manuel Casocavallo on 05/07/21.
//

import SwiftUI

struct HeaderView: View {
    let text: String
    var body: some View {
        VStack {
            HStack {
                Image("NBALogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 60)
                Text(text)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.leading, 8)
                Spacer()
            }
            .padding()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static let text = "Test string"
    static var previews: some View {
        HeaderView(text: text)
    }
}
