//  TMDbClient.swift
//  API
//
//  Created by Guru on 05/12/2021.
//

import Foundation
import Client
import Entities

public final class TMDbClient: LoggingClient {
    private let authorizationParameters: RequestParameters

    public init(apiKey: String) {
        self.authorizationParameters = QueryParameters([.init(name: "apikey", value: apiKey)])
        super.init(baseURL: EndPoints.baseUrl)
        defaultHeaders["Content-Type"] = "application/json"
    }

    public override func prepare<T, E>(request: Request<T, E>) -> Request<T, E> {
        var request = request
        if request.needsAuthorization {
            request.parameters.append(authorizationParameters)
        }
        return request
    }
}
