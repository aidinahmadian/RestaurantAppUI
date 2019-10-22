//
//  HotelImageCollectionViewCell.swift
//  Restaurant
//
//  Created by aidin ahmadian on 10/18/19.
//  Copyright © 2019 aidin ahmadian. All rights reserved.
//  https://github.com/aidinahmadian

import UIKit

class RestaurantImageCollectionViewCell: UICollectionViewCell {
        
    var restaurantArtwork: Foods? {
        didSet {
            guard let listItem = restaurantArtwork else {return}
            if let imageName = listItem.imageName {
                restaurantImageView.image = UIImage(named: imageName)
            }
        }
    }
    
    
    // MARK: Creating (UIImageView) Programmatically For our RestaurantImageCollectionViewCell
    
    
    var restaurantImageView: UIImageView = {
        let hiv = UIImageView()
        hiv.translatesAutoresizingMaskIntoConstraints = false
        hiv.contentMode = .scaleAspectFill
        hiv.clipsToBounds = true
        //hiv.backgroundColor = #colorLiteral(red: 0.2285108566, green: 0.546705544, blue: 0.845690906, alpha: 1)
        return hiv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: Setup Functions/Constraints programmatically Using NSLayoutConstraint
    
    
    func setupView() {
        addSubview(restaurantImageView)
        backgroundColor = UIColor.yellow
    }
    
    func setupConstraints() {
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":restaurantImageView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":restaurantImageView]))
    }
}
