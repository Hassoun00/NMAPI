//
//  BuyButtonStyle.swift
//  complexAPI
//
//  Created by hassoun on 16/09/2022.
//

import SwiftUI

struct BuyButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.accentColor)
            .padding(.vertical, 5)
            .padding(.horizontal, 10)
            .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.accentColor, lineWidth: 1))
            .opacity(configuration.isPressed ? 0.5 : 1)
        
    }
}

struct BuyButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
       
        VStack {
            Button("1.99 USD") {
                
            }
            .buttonStyle(BuyButtonStyle())
        }
    }
}

