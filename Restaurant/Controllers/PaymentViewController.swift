//
//  PaymentViewController.swift
//  Restaurant
//
//  Created by aidin ahmadian on 10/22/19.
//  Copyright © 2019 aidin ahmadian. All rights reserved.
//  https://github.com/aidinahmadian

import UIKit

class PaymentViewController:UIViewController {
    
    
    let cardView: CardView = {
       let cv = CardView()
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.layer.cornerRadius = 10
        cv.layer.masksToBounds = true
        return cv
    }()
    
    lazy var addCardView: AddCardView = {
       let acv = AddCardView()
        acv.translatesAutoresizingMaskIntoConstraints = false
        acv.paymentViewController = self
        return acv
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupView()
        setupConstraints()
        self.hideKeyboardWhenTappedAround()
    }
    
    func setupNavigationBar() {
        navigationItem.title = "Make Payment"
    }
    
    
    // MARK: Setup Functions/Constraints Programmatically Using NSLayoutConstraint
    
    
    func setupView() {
        view.backgroundColor = UIColor.white
        view.addSubview(cardView)
        view.addSubview(addCardView)
    }
    
    func setupConstraints() {
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]-10-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":cardView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-100-[v0(\(view.frame.height / 3.5))]-10-[v1]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":cardView,"v1":addCardView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]-10-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":addCardView]))
    }
    
    func goToCongratulation() {
        let successfulPurchaseViewController = SuccessfulPurchaseViewController()
        navigationController?.pushViewController(successfulPurchaseViewController, animated: true)
    }
}
