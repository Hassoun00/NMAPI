//
//  AlbumSearchView.swift
//  complexAPI
//
//  Created by hassoun on 16/09/2022.
//

import SwiftUI

struct AlbumSearchView: View {
    
    @StateObject var viewModel = AlbumListViewModel()
    
    var body: some View {
        NavigationView {
            
            if #available(iOS 15.0, *) {
                Group {
                    if viewModel.searchTerm.isEmpty {
                        SearchPlaceholderView(searchTerm: $viewModel.searchTerm)
                    } else {
                        AlbumListView(viewModel: viewModel)
                    }
                }
                .searchable(text: $viewModel.searchTerm)
                .navigationTitle("Search Album")
            } else {
                // Fallback on earlier versions
            }
        }
    }
}



struct AlbumSearchView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumSearchView()
            .preferredColorScheme(.light)
    }
}

struct Backgroundview: View {
    @Binding var isNight: Bool

    var body: some View {
       
    LinearGradient(gradient: Gradient(colors:
                                        [isNight ? .black : .blue, isNight ? .gray : Color("lightblue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}
