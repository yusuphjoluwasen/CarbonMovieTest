//
//  Results.swift
//  API
//
//  Created by Guru on 05/12/2021.
//

import Foundation

public struct Results<T: Codable>: Codable {
    public let Search: T
    public let Error: String?
    public let Response: String?
}
