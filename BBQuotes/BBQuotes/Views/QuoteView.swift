//
//  QuoteView.swift
//  BBQuotes
//
//  Created by 이효주 on 12/18/24.
//

import SwiftUI

struct QuoteView: View {
    
    // MARK: - PROPERTY
    let vm = ViewModel()
    let show: String

    // MARK: - BODY
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image(show.lowercased().replacingOccurrences(of: " ", with: ""))
                    .resizable()
                    .frame(width: geo.size.width * 2.7, height: geo.size.height * 1.2)
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    QuoteView(show: "Breaking Bad")
        .preferredColorScheme(.dark)
}
