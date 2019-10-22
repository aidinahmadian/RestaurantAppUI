//
//  NightRoomView.swift
//  Restaurant
//
//  Created by aidin ahmadian on 10/18/19.
//  Copyright © 2019 aidin ahmadian. All rights reserved.
//  https://github.com/aidinahmadian

import UIKit

class AmountView: UIView {
    
    
    // MARK: Creating (UILabels) Programmatically For our AmountView
    
    
    let minusLabel: UILabel = {
       let ml = UILabel()
        ml.textAlignment = .center
        ml.textColor = UIColor.darkGray
        ml.translatesAutoresizingMaskIntoConstraints = false
        ml.font = UIFont.systemFont(ofSize: 13)
        ml.text = "-"
        return ml
    }()
    
    let plusLabel: UILabel = {
        let pl = UILabel()
        pl.textAlignment = .center
        pl.textColor = UIColor.darkGray
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.font = UIFont.systemFont(ofSize: 13)
        pl.text = "+"
        return pl
    }()
    
    let valueLabel: UILabel = {
        let pl = UILabel()
        pl.textAlignment = .center
        pl.textColor = UIColor.darkGray
        pl.translatesAutoresizingMaskIntoConstraints = false
        pl.font = UIFont.systemFont(ofSize: 13)
        pl.text = "1"
        return pl
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
        backgroundColor = UIColor.init(white: 0.95, alpha: 1)
        addSubview(minusLabel)
        addSubview(plusLabel)
        addSubview(valueLabel)
    }
    
    func setupConstraints() {
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0(20)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":minusLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":minusLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[v0(20)]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":plusLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":plusLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-20-[v0(20)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":valueLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":valueLabel]))
    }
}
