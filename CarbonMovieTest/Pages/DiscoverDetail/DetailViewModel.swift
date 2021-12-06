//
//  DetailViewModel.swift
//  CarbonMovieTest
//
//  Created by Guru on 05/12/2021.
//

import Foundation
import iOSUtilities

final class DiscoverDetailViewModel{
    
    var posterImage = ""
    var title = ""
    var overview = ""
    var rating = ""
    var releaseDate = ""
    var genreArray:[MovieDetailCell.ViewModel] = []
    var id = ""
    var director = ""
    
    //Compute movie detail to be used by discoverdetail view controller
    func setDetail(movie:MovieDetailObj?){
        id = movie?.id ?? ""
        title = movie?.title ?? ""
        posterImage = movie?.poster_path ?? ""
        overview = movie?.overview ?? ""
        rating = "\(movie?.vote_average ?? "") (IMDb)"
        releaseDate = movie?.release_date?.getFormattedDate() ?? ""
        director = "Director: \(movie?.director?.capitalized ?? "")"
        genreArray = convertToGenreObj(genreList: movie?.genres ?? [])
    }
}
