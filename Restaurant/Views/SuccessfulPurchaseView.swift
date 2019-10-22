//
//  CongratulationView.swift
//  Restaurant
//
//  Created by aidin ahmadian on 10/22/19.
//  Copyright © 2019 aidin ahmadian. All rights reserved.
//  https://github.com/aidinahmadian

import UIKit

class SuccessfulPurchaseView: UIView {
    
    
    // MARK: Creating (UILabel / UIView / UIImageView) Programmatically For our SuccessfulPurchaseView
    
    
    let purchaseImageView: UIImageView = {
       let civ = UIImageView()
        civ.tintColor = UIColor.white
        civ.image = UIImage(named: "payment")
        civ.contentMode = .scaleToFill
        civ.translatesAutoresizingMaskIntoConstraints = false
        return civ
    }()
    
    let circledView: UIView = {
       let cv = UIView()
        cv.backgroundColor = UIColor.init(white: 0.8, alpha: 1)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.layer.masksToBounds = true
        cv.layer.cornerRadius = 40
        return cv
    }()
    
    let purchaseLabel: UILabel = {
        let cl = UILabel()
        cl.text = "Congratulation"
        cl.textColor = .green
        cl.font = UIFont.boldSystemFont(ofSize: 25)
        cl.translatesAutoresizingMaskIntoConstraints = false
        cl.textAlignment = .center
        return cl
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


