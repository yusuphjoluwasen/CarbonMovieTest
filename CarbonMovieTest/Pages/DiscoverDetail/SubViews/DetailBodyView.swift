//
//  DiscoverDetailBodyView.swift
//  CarbonMovieTest
//
//  Created by Guru on 05/12/2021.
//

import UIKit

final class DiscoverDetailBodyView: UIView {
   
    lazy var genreLabel:UILabel = {
        let this = UILabel()
        this.setUpGenLabel(text:StringConstants.genre, textColor: .white, font: .systemFont16Medium)
        return this
    }()
    
    lazy var lineViewTwo:UIView = {
        let this = UIView()
        this.backgroundColor = .movieColorDarkGray
        this.translatesAutoresizingMaskIntoConstraints = false
        return this
    }()
    
    lazy var synopsisLabel:UILabel = {
        let this = UILabel()
        this.setUpGenLabel(text: StringConstants.synopsis, textColor: .white, font: .systemFont16Medium)
        return this
    }()
    
    lazy var synopsisText:UILabel = {
        let this = UILabel()
        this.setUpGenLabel(text: "", textColor: .movieColorGray2, font: .systemFont12Regular, numberOfLines: 5)
        return this
    }()
}
