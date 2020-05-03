//
//  SearchResultCell.swift
//  Search
//
//  Created by Jorge Paillao on 5/9/19.
//  Copyright © 2019 Jorge Paillao. All rights reserved.
//

import UIKit

class SearchResultCell: UICollectionViewCell {
    
    let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "Alita")
        iv.widthAnchor.constraint(equalToConstant: 64).isActive = true
        iv.layer.borderColor = UIColor(white: 0.5, alpha: 0.5).cgColor
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Jurasic World"
        label.font = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
        label.numberOfLines = 3
        label.lineBreakMode = .byWordWrapping
        label.sizeToFit()
        return label
    }()
    
    let messageLabel: UILabel = {
        let label = UILabel()
        label.text = "Rated 100"
        label.font = UIFont.systemFont(ofSize: 15, weight: UIFont.Weight.ultraLight)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.sizeToFit()
        return label
    }()
    
    let getButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Detalle", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize:14)
        button.backgroundColor = AppColors.blue
        button.layer.cornerRadius = 16
        button.layer.masksToBounds = true
        button.widthAnchor.constraint(equalToConstant: 70).isActive = true
        button.heightAnchor.constraint(equalToConstant: 30).isActive = true
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let labelsStackView = UIStackView(arrangedSubviews: [nameLabel, messageLabel])
        labelsStackView.axis = .vertical
        labelsStackView.distribution = .fillProportionally
        labelsStackView.alignment = .leading
        
        let stackView = UIStackView(arrangedSubviews: [profileImageView, labelsStackView, getButton])
        stackView.spacing = 12
        stackView.distribution = .fill
        stackView.alignment = .top
        addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.fillSuperview(padding: .init(top: 32, left: 16, bottom: 16, right: 16))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
