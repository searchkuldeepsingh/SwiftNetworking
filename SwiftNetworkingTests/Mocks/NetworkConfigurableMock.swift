//
//  NetworkConfigurableMock.swift
//  SwiftNetworkingTests
//
//  Created by Kuldeep on 26/06/21.
//

import Foundation
@testable import SwiftNetworking

class NetworkConfigurableMock: NetworkConfigurable {
    var baseURL: URL = URL(string: "https://mock.test.com")!
    var headers: [String: String] = [:]
    var queryParameters: [String: String] = [:]
}

