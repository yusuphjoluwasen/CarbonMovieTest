//
//  Session.swift
//  CarbonMovieTest
//
//  Created by Guru on 05/12/2021.
//

import Foundation
import API

final class Session {
    let client: TMDbClient

    init() {
        client = TMDbClient(apiKey: StringConstants.apikey)
    }
}
