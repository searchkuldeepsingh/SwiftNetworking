//
//  APIEndpoints.swift
//  SwiftNetworking
//
//  Created by Kuldeep on 26/06/21.
//

import Foundation

// MARK: - Endpoints definitions

struct APIEndpoints {
    static func getMovies(with moviesRequestDTO: MoviesRequest) -> Endpoint<MoviesResponse> {
        return Endpoint(path: "3/search/movie/",
                        method: .get,
                        queryParametersEncodable: moviesRequestDTO)
    }

    static func getMovieImage(path: String) -> Endpoint<Data> {
        return Endpoint(path: "t/p/w500\(path)",
                        method: .get,
                        responseDecoder: RawDataResponseDecoder())
    }
}
