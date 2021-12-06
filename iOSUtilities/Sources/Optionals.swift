//
//  Optionals.swift
//  iOSUtilities
//
//  Created by Guru on 05/12/2021.
//

import Foundation

extension Optional {
    public func isNil<T>(value: T) -> T {
        if self != nil {
            return self as! T
        }
        return value
    }
}
