//
//  RestaurantImageView.swift
//  Restaurant
//
//  Created by aidin ahmadian on 10/18/19.
//  Copyright © 2019 aidin ahmadian. All rights reserved.
//  https://github.com/aidinahmadian

import UIKit

class RestaurantImageView: UIView {
    
    let restaurantLists = FoodsAPI.getLists()
    let hotelImageCollectionViewCellId = "hotelImageCollectionViewCellId"
    var imageName: String?
    
    
    // MARK: Creating (pagecontrol) Programmatically For our RestaurantImageView
    
    
    let pagecontrol : UIPageControl = {
        let pc = UIPageControl()
        pc.currentPage = 0
        pc.numberOfPages = 4
        pc.currentPageIndicatorTintColor = #colorLiteral(red: 0.2285108566, green: 0.546705544, blue: 0.845690906, alpha: 1)
        pc.pageIndicatorTintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        pc.translatesAutoresizingMaskIntoConstraints = false
        return pc
    }()
    
    
    // MARK: RestaurantImageView Horizontal CollectionView
    
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
       let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.dataSource = self
        cv.delegate = self
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.isPagingEnabled = true
        return cv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: Setup Functions/Constraints Programmatically Using NSLayoutConstraint
    
    
    func setupView() {
        backgroundColor = UIColor.blue
        collectionView.register(RestaurantImageCollectionViewCell.self, forCellWithReuseIdentifier: hotelImageCollectionViewCellId)
        addSubview(collectionView)
        addSubview(pagecontrol)
    }
    
    func setupConstraints() {
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":collectionView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":collectionView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":pagecontrol]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(20)]-5-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":pagecontrol]))
    }
}
