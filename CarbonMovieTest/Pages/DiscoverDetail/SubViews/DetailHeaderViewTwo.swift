//
//  DiscoverDetailHeaderViewTwo.swift
//  CarbonMovieTest
//
//  Created by Guru on 05/12/2021.
//

import UIKit
import iOSUtilities

final class DiscoverDetailHeaderViewTwo: UIView {
   
    lazy var fourKView:UIView = {
        let this = UIView()
        this.translatesAutoresizingMaskIntoConstraints = false
        this.backgroundColor = .movieColorGrayWhite2
        this.layer.cornerRadius = CGFloat.size5
        this.layer.borderWidth = CGFloat.lineHeight
        this.layer.borderColor = UIColor.movieColorGray3.cgColor
        return this
    }()
    
    lazy var fourKLabel:UILabel = {
        let this = UILabel()
        this.setUpGenLabel(text: StringConstants.fourK, textColor: .white,font: .systemFont12Regular)
        return this
    }()
    
    lazy var releaseDateLabel:UILabel = {
        let this = UILabel()
        this.setUpGenLabel(text: StringConstants.releaseDate, textColor: .white, font: .systemFont16Medium)
        return this
    }()
    
    lazy var releaseDateText:UILabel = {
        let this = UILabel()
        this.setUpGenLabel(text: "", textColor: .movieColorGray2,font: .systemFont12Regular)
        return this
    }()
}
