//
//  Extensions.swift
//  Restaurant
//
//  Created by aidin ahmadian on 10/16/19.
//  Copyright © 2019 aidin ahmadian. All rights reserved.
//  https://github.com/aidinahmadian

import UIKit

// MARK: Hidding Software Keyboard

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

// MARK: HomeViewController Extension


extension HomeViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return restaurantLists.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = suggestedRestaurantsCollectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! SuggestedRestaurantsCollectionView
        //cell.backgroundColor = .black
        //cell.layer.cornerRadius = 20
        cell.restaurantArtwork = restaurantLists[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: suggestedRestaurantsCollectionView.frame.width - 60, height: suggestedRestaurantsCollectionView.frame.height - 15)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let moreInfoViewController = RestaurantsDetailViewController()
        navigationController?.pushViewController(moreInfoViewController, animated: true)
    }
}

// MARK: RestaurantImageView Extension


extension RestaurantImageView: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return restaurantLists.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: hotelImageCollectionViewCellId, for: indexPath) as! RestaurantImageCollectionViewCell
        cell.restaurantArtwork = restaurantLists[indexPath.row]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        pagecontrol.currentPage = Int(targetContentOffset.pointee.x / frame.width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
