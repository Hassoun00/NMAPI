//
//  ImageLoadingView.swift
//  complexAPI
//
//  Created by hassoun on 16/09/2022.
//

import SwiftUI

struct ImageLoadingView: View {
    
    let urlString: String
    let size: CGFloat
    
    var body: some View {
        
        if #available(iOS 15.0, *) {
            AsyncImage(url: URL(string: urlString)) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(width: size)
                case .failure(_):
                    Color.gray
                        .frame(width: size)
                case .success(let image):
                    image
                        .border(Color(white: 0.8))
                @unknown default:
                    EmptyView()
                }
            }
            .frame(height: size)
        } else {
            
        }
    }
}

struct ImageLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        ImageLoadingView(urlString: "", size: 100)
    }
}

