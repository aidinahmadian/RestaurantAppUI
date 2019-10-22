//
//  ViewController.swift
//  Restaurant
//
//  Created by aidin ahmadian on 10/16/19.
//  Copyright © 2019 aidin ahmadian. All rights reserved.
//  https://github.com/aidinahmadian

import UIKit
import MapKit

class HomeViewController: UIViewController, MKMapViewDelegate {
    
    let restaurantLists = RestaurantsAPI.getLists()
    var mapView: MKMapView!
    let cellId = "HomeViewCellID"
    
    
    // MARK: Creating suggestedRestaurantsCollectionView Horizontal CollectionView
    
    
    lazy var suggestedRestaurantsCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cvv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        //cvv.layer.cornerRadius = 20
        cvv.dataSource = self
        cvv.delegate = self
        cvv.translatesAutoresizingMaskIntoConstraints = false
        return cvv
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = false
        view.backgroundColor = .white
        navigationItem.title = "Restaurant"
        setupViews()
        setupConstraints()
        
        
        // MARK: Creating (nameLabel / mapView) Programmatically For our HomeViewController
        
        
        let nameLabel: UILabel = {
            let label = UILabel()
            label.text = "Best New Restaurants"
            label.font = UIFont.boldSystemFont(ofSize: 22)
            label.translatesAutoresizingMaskIntoConstraints = false
            return label
        }()
        
        let mapView = MKMapView()
        mapView.mapType = .standard
        mapView.translatesAutoresizingMaskIntoConstraints = false
        mapView.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        mapView.delegate = self
        mapView.isZoomEnabled = true
        mapView.isScrollEnabled = true
        
        
        view.addSubview(mapView)
        view.addSubview(nameLabel)
        
        
        // MARK: Setup Constraints Programmatically Using Anchors
        
        
        nameLabel.topAnchor.constraint(equalTo: mapView.bottomAnchor, constant: 15).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive  = true
        nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14).isActive  = true
        
        mapView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        mapView.bottomAnchor.constraint(equalTo: suggestedRestaurantsCollectionView.topAnchor, constant: -40).isActive = true
        mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    
    // MARK: Setup Functions/Constraints Programmatically Using NSLayoutConstraint
    
    
    func setupViews() {
        view.addSubview(suggestedRestaurantsCollectionView)
        suggestedRestaurantsCollectionView.register(SuggestedRestaurantsCollectionView.self, forCellWithReuseIdentifier: cellId)
        suggestedRestaurantsCollectionView.backgroundColor = .white
    }
    
    func setupConstraints() {
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-400-[v1(\((view.frame.height) / 2.5))]-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v1":suggestedRestaurantsCollectionView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":suggestedRestaurantsCollectionView]))
    }
}
