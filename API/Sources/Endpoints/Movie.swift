//
//  Movie.swift
//  API
//
//  Created by Guru on 05/12/2021.
//

import Foundation
import Entities
import Client

extension Movie {
    public static func getNowPlaying(page:String) -> Request<MovieResponse, APIError> {
        return Request(
            path: EndPoints.all,
            method: .get,
            parameters: [QueryParameters([.init(name: "s", value: "Batman"), .init(name: "page", value: page)])],
            resource: Results<MovieResponse>.dataDecodeable(),
            error: APIError.init,
            needsAuthorization: true
        )
    }
    
    public static func queryMovie(query:String) -> Request<MovieResponse, APIError> {
        return Request(
            path: EndPoints.all,
            method: .get,
            parameters: [QueryParameters([.init(name: "s", value: query)])],
            resource: Results<Movie>.dataDecodeable(),
            error: APIError.init,
            needsAuthorization: true
        )
    }
    
    public static func getMovie(query:String) -> Request<Movie, APIError> {
        return Request(
            path: EndPoints.all,
            method: .get,
            parameters: [QueryParameters([.init(name: "i", value: query)])],
            resource: Results<Movie>.dataDecodeable(),
            error: APIError.init,
            needsAuthorization: true
        )
    }
    
//    public static func getGenres() -> Request<MovieGenreResponse, APIError> {
//        return Request(
//            path: EndPoints.movieList,
//            method: .get,
//            resource: Results<MovieGenreResponse>.dataDecodeable(),
//            error: APIError.init,
//            needsAuthorization: true
//        )
//    }
}
