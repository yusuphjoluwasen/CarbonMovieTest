//
//  MovieDetailCell.swift
//  Moviestar
//
//  Created by Guru on 19/09/2021.
//

import UIKit
import iOSUtilities

final class MovieDetailCell: UICollectionViewCell {
    
    let titleLabel: UILabel = {
        let this = UILabel()
        this.setUpGenLabel(text: "", textColor: .movieColorGray2, font: .systemFont14Medium,
                           numberOfLines: 1, textAlignment: .center)
        return this
    }()
    
    let titleView: UIView = {
        let this = UIView()
        this.translatesAutoresizingMaskIntoConstraints = false
        this.backgroundColor = .blue
        return this
    }()
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        configureSubviews()
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureSubviews() {
        addSubview(titleLabel)
    }
    
    private func configureConstraints() {

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0),
            titleLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            titleLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: -10),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: 0),
        ])
    }
}

extension MovieDetailCell {
    struct ViewModel: Hashable {
        let genre: String
    }
    
    func populate(data: ViewModel) {
        titleLabel.text = data.genre
    }
}
