//
//  MovieSearchListView.swift
//  complexAPI
//
//  Created by hassoun on 16/09/2022.
//

import SwiftUI

struct MovieSearchListView: View {
    
    @State private var viewModel = MovieListViewModel()
    
    var body: some View {
        NavigationView {
            
            if #available(iOS 15.0, *) {
                Group {
                    MovieListView(viewModel: viewModel)
                }
                .searchable(text: $viewModel.searchTerm)
                .navigationTitle("Search Movies")
            } else {
                // Fallback on earlier versions
            }
        }
    }
}

struct MovieSearchListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieSearchListView()
    }
}

