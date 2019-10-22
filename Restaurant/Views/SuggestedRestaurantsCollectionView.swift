//
//  SuggestedRestaurantsCollectionView.swift
//  Restaurant
//
//  Created by aidin ahmadian on 10/16/19.
//  Copyright © 2019 aidin ahmadian. All rights reserved.
//  https://github.com/aidinahmadian

import UIKit

class SuggestedRestaurantsCollectionView: UICollectionViewCell {
    
    var restaurantArtwork: Restaurants? {
        didSet {
            guard let listItem = restaurantArtwork else {return}
            if let imageName = listItem.imageName {
                restaurantImage.image = UIImage(named: imageName)
            }
            if let restaurantsName = listItem.restaurantsName {
                restaurantName.text = restaurantsName
            }
            if let priceTag = listItem.priceTag {
                restaurantPrice.text = priceTag
            }
        }
    }
    
    
    // MARK: Creating (UIImageView / UILabels) Programmatically For our SuggestedRestaurantsCollectionView
    
    
    let restaurantImage: UIImageView = {
        let ci = UIImageView()
        ci.clipsToBounds = true
        //ci.backgroundColor = .green
        ci.contentMode = .scaleAspectFill
        ci.layer.cornerRadius = 10
        ci.translatesAutoresizingMaskIntoConstraints = false
        return ci
    }()
    
    let restaurantName: UILabel = {
       let cn = UILabel()
        cn.translatesAutoresizingMaskIntoConstraints = false
        cn.font = UIFont.boldSystemFont(ofSize: 20)
        cn.textColor = .darkGray
        //cn.backgroundColor = .red
        cn.numberOfLines = 2
        cn.textAlignment = .left
        return cn
    }()
    
    let restaurantPrice: UILabel = {
       let cn = UILabel()
        cn.translatesAutoresizingMaskIntoConstraints = false
        cn.textColor = #colorLiteral(red: 0.2285108566, green: 0.546705544, blue: 0.845690906, alpha: 1)
        //cn.backgroundColor = .yellow
        cn.numberOfLines = 2
        cn.textAlignment = .left
        return cn
    }()
    
    let moreInfo: UILabel = {
       let cn = UILabel()
        cn.translatesAutoresizingMaskIntoConstraints = false
        cn.text = "More Info"
        cn.textColor = .white
        cn.backgroundColor = #colorLiteral(red: 0.1403488219, green: 0.1641628742, blue: 0.1974385381, alpha: 1)
        cn.clipsToBounds = true
        cn.layer.cornerRadius = 10
        //cn.backgroundColor = .yellow
        cn.textAlignment = .center
        return cn
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: Setup Functions/Constraints programmatically Using NSLayoutConstraint
    
    
    func setupView() {
        addSubview(restaurantName)
        addSubview(restaurantImage)
        addSubview(restaurantPrice)
        addSubview(moreInfo)
    }
    
    func setupConstraints() {
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-[v0]-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":restaurantImage]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]-200-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":restaurantName]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]-200-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":restaurantPrice]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-190-[v0]-10-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":moreInfo]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-[v0(40)]-12-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":moreInfo]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-[v0]-[v1(20)]-[v2(20)]-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":restaurantImage,"v1":restaurantName, "v2": restaurantPrice]))
    }
}
