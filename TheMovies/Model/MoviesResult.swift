//
//  MoviesResult.swift
//  TheMovies
//
//  Created by Jorge Paillao on 7/8/19.
//  Copyright © 2019 Jorge Paillao. All rights reserved.
//

import Foundation

struct MoviesResult: Decodable {
    let total_results: Int
    let results: [Result]
}
struct Result: Decodable {
    let id: Int
    let title: String
    let poster_path: String
    let overview: String
    let popularity: Float
    var vote_average: Float
}
    


