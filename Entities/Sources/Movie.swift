//
//  Movie.swift
//  Entities
//
//  Created by Frederik Christensen on 19/01/2021.
//

import Foundation

public struct Movie: Codable {
    public let id: String?
    public let title: String?
    public let poster_path:String?
    public let release_date:String?
    public let overview:String?
    public let vote_average:String?
    public let genre:String?
    public let year:String?
    public let director:String?
    public let uuid = UUID()
    
    enum CodingKeys: String, CodingKey {
        case id = "imdbID"
        case title = "Title"
        case poster_path = "Poster"
        case release_date = "Released"
        case overview = "Plot"
        case vote_average = "imdbRating"
        case genre = "Genre"
        case year = "Year"
        case director = "Director"
    }
}

public struct MovieResponse: Codable {
    public let search: [Movie]?
    public let Response: String?
    public let Error: String?
    
    enum CodingKeys: String, CodingKey {
        case search = "Search"
        case Response, Error
    }
}
