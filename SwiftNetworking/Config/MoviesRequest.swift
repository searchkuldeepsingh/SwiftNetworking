//
//  MoviesRequest.swift
//  SwiftNetworking
//
//  Created by Kuldeep on 26/06/21.
//


// MARK: - API Data (Data Transfer Objects)
struct MoviesRequest: Encodable {
    let query: String
    let page: Int
}
