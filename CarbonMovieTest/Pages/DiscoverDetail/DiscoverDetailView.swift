//
//  DiscoverDetailView.swift
//  CarbonMovieTest
//
//  Created by Guru on 05/12/2021.
//

import UIKit
import iOSUtilities

final class DiscoverDetailView: UIView {
    
    let collectionView: UICollectionView = {
        let itemSize = NSCollectionLayoutSize(
            widthDimension: .estimated(200),
            heightDimension: .fractionalHeight(1.0))
        let itemLayout = NSCollectionLayoutItem(layoutSize: itemSize)
        itemLayout.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: CGFloat.margin2x)
        
        let groupSize = NSCollectionLayoutSize(
            widthDimension: .fractionalWidth(1.0),
            heightDimension: .absolute(CGFloat.size35))
        
        let groupLayout = NSCollectionLayoutGroup.horizontal(
            layoutSize: groupSize,
            subitem: itemLayout,
            count: 2)

        groupLayout.interItemSpacing = .fixed(8)
        
        let section = NSCollectionLayoutSection(group: groupLayout)
        section.contentInsets = .init(top: 0, leading: 16, bottom: 0, trailing: 16)
        section.interGroupSpacing = 8
        
        let layout = UICollectionViewCompositionalLayout(section: section)
        let this = UICollectionView(frame: .zero, collectionViewLayout: layout)
        this.translatesAutoresizingMaskIntoConstraints = false
        this.backgroundColor = .clear
        return this
    }()
    
    lazy var discoverDetailHeaderViewOne = DiscoverDetailHeaderView()
    lazy var discoverDetailHeaderViewTwo = DiscoverDetailHeaderViewTwo()
    lazy var discoverDetailBodyView = DiscoverDetailBodyView()
    
  
    convenience init() {
        self.init(frame: .zero)
        configureView()
        configureSubviews()
        configureConstraints()
    }

    private func configureView() {
        backgroundColor = .movieBackgroundColor
    }

    private func configureSubviews() {
        addSubview(discoverDetailHeaderViewOne.posterImage)
        addSubview(discoverDetailHeaderViewOne.titleLabel)
        addSubview(discoverDetailHeaderViewOne.ratingLabel)
        addSubview(discoverDetailHeaderViewOne.ratingImage)
        addSubview(discoverDetailHeaderViewOne.directorLabel)
        addSubview(discoverDetailHeaderViewOne.lineView)
        addSubview(discoverDetailHeaderViewTwo.fourKView)
        addSubview(discoverDetailHeaderViewTwo.fourKLabel)
        addSubview(discoverDetailHeaderViewTwo.releaseDateLabel)
        addSubview(discoverDetailHeaderViewTwo.releaseDateText)
        addSubview(discoverDetailBodyView.genreLabel)
        addSubview(collectionView)
        addSubview(discoverDetailBodyView.lineViewTwo)
        addSubview(discoverDetailBodyView.synopsisLabel)
        addSubview(discoverDetailBodyView.synopsisText)
    }

   
}

