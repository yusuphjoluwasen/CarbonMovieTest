//
//  LoggingClient.swift
//  Client
//
//  Created by Frederik Christensen on 10/09/2019.
//

import Foundation

open class LoggingClient: Client {
    override open func perform<Resource, Error>(
        _ request: Request<Resource, Error>,
        completion: @escaping (Result<Resource, Client.Error>) -> Void) -> URLSessionTask {
        let description = "\(request.method.rawValue) \(request.path): \(request.parameters))"
        print("Sent request: " + description)
        return super.perform(request, completion: { result in
            switch result {
            case .success:
                print("Received response for: " + description)
            case .failure(let error):
                print("Request failed: " + description + "\nWith error: " + error.localizedDescription)
            }
            completion(result)
        })
    }
}
