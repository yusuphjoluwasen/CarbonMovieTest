//
//  APIError.swift
//  Client
//
//  Created by Guru on 05/12/2021.
//

import Foundation

public struct APIError: Swift.Error {
    let errorData: Data
    
    public init(_ data: Data) {
        errorData = data
    }
}
