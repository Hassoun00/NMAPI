//
//  FetchState.swift
//  complexAPI
//
//  Created by hassoun on 16/09/2022.
//

import Foundation

enum FetchState: Comparable {
    case good
    case isLoading
    case loadedAll
    case error(String)
}

