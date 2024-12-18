//
//  CharacterView.swift
//  BBQuotes
//
//  Created by 이효주 on 12/18/24.
//

import SwiftUI

struct CharacterView: View {
    // MARK: - PROPERTY
    let character: Character
    let show: String
    
    // MARK: - BODY
    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .top) {
                Image(show.lowercased().replacingOccurrences(of: " ", with: ""))
                    .resizable()
                    .scaledToFit()
                
                ScrollView {
                    AsyncImage(url: character.images[0]) { image in
                        image
                            .resizable()
                            .scaledToFill()
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(width: geo.size.width/1.2, height: geo.size.height/1.7)
                    .clipShape(.rect(cornerRadius: 25))
                    .padding(.top, 60)
                    
                    VStack(alignment: .leading) {
                        Text(character.name)
                            .font(.largeTitle)
                        
                        Text("Portrayed By: \(character.portrayedBy)")
                        
                        Divider()
                        
                        Text("\(character.name) Character Info")
                        
                        Text("\(character.birthday)")
                        
                        Divider()
                        
                        Text("Occupations:")
                        
                        ForEach(character.occupations, id: \.self) {
                            occupation in
                            Text("•\(occupation)")
                                .font(.subheadline)
                        }
                        
                        Divider()
                        
                        Text("Nicknames:")
                        
                        if character.aliases.count > 0 {
                            ForEach(character.aliases, id: \.self) {
                                alias in
                                Text("•\(alias)")
                                    .font(.subheadline)
                            }
                        }
                        
                        Divider()
                    }
                    .frame(width: geo.size.width/1.25, alignment: .leading)
                }
                .scrollIndicators(.hidden)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    CharacterView(character: ViewModel().character, show: "Breaking Bad")
}
