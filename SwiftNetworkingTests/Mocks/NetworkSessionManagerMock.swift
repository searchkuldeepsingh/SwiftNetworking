//
//  NetworkSessionManagerMock.swift
//  SwiftNetworkingTests
//
//  Created by Kuldeep on 26/06/21.
//

import Foundation
@testable import SwiftNetworking

struct NetworkSessionManagerMock: NetworkSessionManager {
    let response: HTTPURLResponse?
    let data: Data?
    let error: Error?
    
    func request(_ request: URLRequest,
                 completion: @escaping CompletionHandler) -> NetworkCancellable {
        completion(data, response, error)
        return URLSessionDataTask()
    }
}

