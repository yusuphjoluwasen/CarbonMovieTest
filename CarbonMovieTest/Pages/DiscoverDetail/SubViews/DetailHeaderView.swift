//
//  DiscoverDetailHeaderView.swift
//  CarbonMovieTest
//
//  Created by Guru on 05/12/2021.
//


import UIKit
import iOSUtilities

final class DiscoverDetailHeaderView: UIView {
    
    lazy var posterImage:ImageLoader = {
        let this = ImageLoader()
        this.setUpImageView(image: "", contentMode: .scaleToFill)
        return this
    }()
    
    lazy var titleLabel:UILabel = {
        let this = UILabel()
        this.setUpGenLabel(text: "",textColor: .white, font: UIFont.preferredFont(forTextStyle: .title3), numberOfLines: 2)
        return this
    }()
    
    lazy var ratingImage:UIImageView = {
        let this = UIImageView()
        this.setUpImageView(image: StringConstants.rateImageUnselect, contentMode: .scaleAspectFill)
        return this
    }()
    
    lazy var ratingLabel:UILabel = {
        let this = UILabel()
        this.setUpGenLabel(text: StringConstants.rate, textColor: .movieColorGray2,font: .systemFont(ofSize: CGFloat.margin3x, weight: .regular))
        return this
    }()
    
    lazy var directorLabel:UILabel = {
        let this = UILabel()
        this.setUpGenLabel(text: StringConstants.director, textColor: .movieColorGray2,font: .systemFont(ofSize: CGFloat.size10, weight: .light))
        return this
    }()
    
    lazy var lineView:UIView = {
        let this = UIView()
        this.backgroundColor = .movieColorDarkGray
        this.translatesAutoresizingMaskIntoConstraints = false
        return this
    }()
    
}
