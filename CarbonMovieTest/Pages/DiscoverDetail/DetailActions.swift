//
//  DetailActions.swift
//  CarbonMovieTest
//
//  Created by Guru on 06/12/2021.
//

import UIKit
import iOSUtilities

extension DiscoverDetailViewController{
    
    //click on favorite image
    @objc func clickOnImage(){
        
        if(isFavorite){
            contentView.discoverDetailHeaderViewOne.ratingImage.image = UIImage(named: StringConstants.rateImageUnselect)
            isFavorite = false
            deleteItemFromFavorites()
            
            animateView(action: { [weak self] in
                self?.contentView.discoverDetailHeaderViewOne.ratingImage.transform = .init(scaleX: 0.8, y: 0.8)
            }, completedaction: { [weak self] in
                self?.contentView.discoverDetailHeaderViewOne.ratingImage.transform = .identity
            })
            
        }else{
            contentView.discoverDetailHeaderViewOne.ratingImage.image = UIImage(named: StringConstants.rateImage)
            saveItemToFavorites()
            isFavorite = true
            
            animateView(action: { [weak self] in
                self?.contentView.discoverDetailHeaderViewOne.ratingImage.transform = .init(scaleX: 1.2, y: 1.2)
            }, completedaction: { [weak self] in
                self?.contentView.discoverDetailHeaderViewOne.ratingImage.transform = .identity
            })
        }
    }
    
    //Setup Favorite Image
    func setUpFavoriteImageClicked(){
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(clickOnImage))
        contentView.discoverDetailHeaderViewOne.ratingImage.isUserInteractionEnabled = true
        contentView.discoverDetailHeaderViewOne.ratingImage.addGestureRecognizer(tapGestureRecognizer)
    }
    
    //add to favorite items list
    func saveItemToFavorites(){
        if !checkIfInFavoriteList(){
            var favorites = retrieveArrayFromUserDefault(identifier: StringConstants.favorites)
            favorites.append(viewModel.id)
            saveArrayToUserDefault(array: favorites, identifier: StringConstants.favorites)
        }
    }
    
    //delete item from favorites list using filter
    func deleteItemFromFavorites(){
        let favorites = retrieveArrayFromUserDefault(identifier: StringConstants.favorites)
        let newfavorites = favorites.filter { $0 != viewModel.id }
        saveArrayToUserDefault(array: newfavorites, identifier: StringConstants.favorites)
    }
    
    //check if item is user's favorite...
    func computeIsFavorite(){
        if checkIfInFavoriteList(){
            isFavorite = true
            contentView.discoverDetailHeaderViewOne.ratingImage.image = UIImage(named: StringConstants.rateImage)
        }else{
            isFavorite = false
            contentView.discoverDetailHeaderViewOne.ratingImage.image = UIImage(named: StringConstants.rateImageUnselect)
        }
    }
    
    //check if item in list
    func checkIfInFavoriteList() -> Bool{
        let favorites = retrieveArrayFromUserDefault(identifier: StringConstants.favorites)
        return favorites.contains(viewModel.id) ? true : false
    }
}
