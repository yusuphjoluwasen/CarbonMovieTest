//
//  DetailConstraints.swift
//  CarbonMovieTest
//
//  Created by Guru on 05/12/2021.
//

import UIKit

extension DiscoverDetailView{
    func configureConstraints() {
        
        NSLayoutConstraint.activate([
            discoverDetailHeaderViewOne.posterImage.topAnchor.constraint(equalTo: topAnchor),
            discoverDetailHeaderViewOne.posterImage.bottomAnchor.constraint(equalTo:centerYAnchor),
            discoverDetailHeaderViewOne.posterImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            discoverDetailHeaderViewOne.posterImage.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            discoverDetailHeaderViewOne.titleLabel.topAnchor.constraint(equalTo: discoverDetailHeaderViewOne.posterImage.bottomAnchor, constant: CGFloat.size10),
            discoverDetailHeaderViewOne.titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: CGFloat.size20),
            discoverDetailHeaderViewOne.titleLabel.trailingAnchor.constraint(equalTo: discoverDetailHeaderViewTwo.fourKView.trailingAnchor, constant: -CGFloat.size40),
        ])
        
        NSLayoutConstraint.activate([
            discoverDetailHeaderViewOne.ratingImage.topAnchor.constraint(equalTo: discoverDetailHeaderViewOne.titleLabel.bottomAnchor, constant: CGFloat.size10),
            discoverDetailHeaderViewOne.ratingImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: CGFloat.size20),
        ])
        
        NSLayoutConstraint.activate([
            discoverDetailHeaderViewOne.ratingLabel.centerYAnchor.constraint(equalTo: discoverDetailHeaderViewOne.ratingImage.centerYAnchor),
            discoverDetailHeaderViewOne.ratingLabel.leadingAnchor.constraint(equalTo: discoverDetailHeaderViewOne.ratingImage.trailingAnchor, constant: CGFloat.size5),
        ])
        
        NSLayoutConstraint.activate([
            discoverDetailHeaderViewOne.directorLabel.topAnchor.constraint(equalTo: discoverDetailHeaderViewOne.ratingImage.bottomAnchor, constant: CGFloat.size5),
            discoverDetailHeaderViewOne.directorLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: CGFloat.size20),
            discoverDetailHeaderViewOne.directorLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -CGFloat.size20),
        ])
        
        NSLayoutConstraint.activate([
            discoverDetailHeaderViewOne.lineView.topAnchor.constraint(equalTo: discoverDetailHeaderViewOne.directorLabel.bottomAnchor, constant: CGFloat.size10),
            discoverDetailHeaderViewOne.lineView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: CGFloat.size20),
            discoverDetailHeaderViewOne.lineView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -CGFloat.size20),
            discoverDetailHeaderViewOne.lineView.heightAnchor.constraint(equalToConstant: CGFloat.lineHeight)
        ])
        
        NSLayoutConstraint.activate([
            discoverDetailHeaderViewTwo.fourKView.centerYAnchor.constraint(equalTo: discoverDetailHeaderViewOne.titleLabel.centerYAnchor),
            discoverDetailHeaderViewTwo.fourKView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -CGFloat.size20),
            discoverDetailHeaderViewTwo.fourKView.widthAnchor.constraint(equalToConstant: CGFloat.size25),
            discoverDetailHeaderViewTwo.fourKView.heightAnchor.constraint(equalToConstant: CGFloat.size25)
        ])
        
        NSLayoutConstraint.activate([
            discoverDetailHeaderViewTwo.fourKLabel.centerYAnchor.constraint(equalTo: discoverDetailHeaderViewTwo.fourKView.centerYAnchor),
            discoverDetailHeaderViewTwo.fourKLabel.centerXAnchor.constraint(equalTo: discoverDetailHeaderViewTwo.fourKView.centerXAnchor),
        ])
        
        NSLayoutConstraint.activate([
            discoverDetailHeaderViewTwo.releaseDateLabel.topAnchor.constraint(equalTo: discoverDetailHeaderViewOne.lineView.bottomAnchor, constant: CGFloat.size10),
            discoverDetailHeaderViewTwo.releaseDateLabel.leadingAnchor.constraint(equalTo: discoverDetailHeaderViewOne.titleLabel.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            discoverDetailHeaderViewTwo.releaseDateText.topAnchor.constraint(equalTo: discoverDetailHeaderViewTwo.releaseDateLabel.bottomAnchor, constant: CGFloat.size5),
            discoverDetailHeaderViewTwo.releaseDateText.leadingAnchor.constraint(equalTo: discoverDetailHeaderViewTwo.releaseDateLabel.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            discoverDetailBodyView.genreLabel.centerYAnchor.constraint(equalTo: discoverDetailHeaderViewTwo.releaseDateLabel.centerYAnchor),
            discoverDetailBodyView.genreLabel.leadingAnchor.constraint(equalTo: discoverDetailHeaderViewTwo.releaseDateLabel.trailingAnchor, constant: CGFloat.size50)
        ])
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: discoverDetailBodyView.genreLabel.bottomAnchor, constant: CGFloat.size10),
            collectionView.heightAnchor.constraint(equalToConstant: CGFloat.size20),
            collectionView.leadingAnchor.constraint(equalTo: discoverDetailBodyView.genreLabel.leadingAnchor),
            collectionView.trailingAnchor.constraint(equalTo:trailingAnchor, constant: -CGFloat.size20)
        ])
        
        NSLayoutConstraint.activate([
            discoverDetailBodyView.lineViewTwo.topAnchor.constraint(equalTo: collectionView.bottomAnchor, constant: CGFloat.size5),
            discoverDetailBodyView.lineViewTwo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: CGFloat.size20),
            discoverDetailBodyView.lineViewTwo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -CGFloat.size20),
            discoverDetailBodyView.lineViewTwo.heightAnchor.constraint(equalToConstant: CGFloat.lineHeight)
        ])
        
        NSLayoutConstraint.activate([
            discoverDetailBodyView.synopsisLabel.topAnchor.constraint(equalTo: discoverDetailBodyView.lineViewTwo.bottomAnchor, constant: CGFloat.size20),
            discoverDetailBodyView.synopsisLabel.leadingAnchor.constraint(equalTo: discoverDetailHeaderViewOne.titleLabel.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            discoverDetailBodyView.synopsisText.topAnchor.constraint(equalTo: discoverDetailBodyView.synopsisLabel.bottomAnchor, constant: CGFloat.size10),
            discoverDetailBodyView.synopsisText.leadingAnchor.constraint(equalTo: discoverDetailHeaderViewOne.titleLabel.leadingAnchor),
            discoverDetailBodyView.synopsisText.trailingAnchor.constraint(equalTo: discoverDetailBodyView.lineViewTwo.trailingAnchor)
        ])
        
    }
}
