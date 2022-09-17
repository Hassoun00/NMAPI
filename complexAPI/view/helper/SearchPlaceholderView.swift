//
//  SearchPlaceholderView.swift
//  complexAPI
//
//  Created by hassoun on 16/09/2022.
//

import SwiftUI

struct SearchPlaceholderView: View {
    
    @Binding var searchTerm: String
    let suggestions = ["Cigarettes after sex", "cry to me", "maneskin"]
    
    var body: some View {
        
    VStack(spacing: 20) {
            
            Text("suggestion")
                .font(.title)
            ForEach(suggestions, id: \.self) { text in
                Button {
                    searchTerm = text
                } label: {
                    Text(text)
                        .font(.title2)
                }
            }
        }
        }
    }
  



struct SearchPlaceholderView_Previews: PreviewProvider {
    static var previews: some View {
        SearchPlaceholderView(searchTerm: .constant("John"))
    }
}



