//
//  AddCardView.swift
//  Restaurant
//
//  Created by aidin ahmadian on 10/22/19.
//  Copyright © 2019 aidin ahmadian. All rights reserved.
//  https://github.com/aidinahmadian

import UIKit

class AddCardView: UIView {
    
    var paymentViewController: PaymentViewController?
    
    
    // MARK: Creating (UILabels / UIImageViews / UITextFields / UIView / UIButton) Programmatically For our AddCardView
    
    
    let addCardLabel: UILabel = {
       let acl = UILabel()
       acl.textColor = UIColor.darkGray
       acl.text = "Add New Card"
       acl.font = UIFont.boldSystemFont(ofSize: 19)
        acl.translatesAutoresizingMaskIntoConstraints = false
       return acl
    }()
    
    let cardNumberLabel: UILabel = {
        let cnl = UILabel()
        cnl.textColor = #colorLiteral(red: 0.2285108566, green: 0.546705544, blue: 0.845690906, alpha: 1)
        cnl.text = "Credit Card Number"
        cnl.font = UIFont.systemFont(ofSize: 13)
        cnl.translatesAutoresizingMaskIntoConstraints = false
        return cnl
    }()
    
    let cardNumberTf: UITextField = {
        let cnl = UITextField()
        cnl.textColor = UIColor.darkGray
        cnl.text = "1234 1234 1234 1234"
        cnl.borderStyle = .none
        cnl.font = UIFont.boldSystemFont(ofSize: 15)
        cnl.translatesAutoresizingMaskIntoConstraints = false
        return cnl
    }()
    
    let cardNumberView: UIView = {
       let cnv = UIView()
        cnv.backgroundColor = UIColor.init(white: 0.9, alpha: 1)
        cnv.translatesAutoresizingMaskIntoConstraints = false
        return cnv
    }()
    
    let cardOwnerLabel: UILabel = {
        let cnl = UILabel()
        cnl.textColor = #colorLiteral(red: 0.2285108566, green: 0.546705544, blue: 0.845690906, alpha: 1)
        cnl.text = "Credit Card Owner"
        cnl.font = UIFont.systemFont(ofSize: 13)
        cnl.translatesAutoresizingMaskIntoConstraints = false
        return cnl
    }()
    
    let cardOwnerTf: UITextField = {
        let cnl = UITextField()
        cnl.textColor = UIColor.darkGray
        cnl.text = "john Appleseed"
        cnl.borderStyle = .none
        cnl.font = UIFont.boldSystemFont(ofSize: 15)
        cnl.translatesAutoresizingMaskIntoConstraints = false
        return cnl
    }()
    
    let cardOwnerView: UIView = {
        let cnv = UIView()
        cnv.backgroundColor = UIColor.init(white: 0.9, alpha: 1)
        cnv.translatesAutoresizingMaskIntoConstraints = false
        return cnv
    }()
    
    let issuedLabel: UILabel = {
        let cnl = UILabel()
        cnl.textColor = #colorLiteral(red: 0.2285108566, green: 0.546705544, blue: 0.845690906, alpha: 1)
        cnl.text = "Issue On"
        cnl.font = UIFont.systemFont(ofSize: 13)
        cnl.translatesAutoresizingMaskIntoConstraints = false
        return cnl
    }()
    
    let issuedTf: UITextField = {
        let cnl = UITextField()
        cnl.textColor = UIColor.darkGray
        cnl.text = "07/17"
        cnl.borderStyle = .none
        cnl.font = UIFont.boldSystemFont(ofSize: 15)
        cnl.translatesAutoresizingMaskIntoConstraints = false
        return cnl
    }()
    
    let issuedView: UIView = {
        let cnv = UIView()
        cnv.backgroundColor = UIColor.init(white: 0.9, alpha: 1)
        cnv.translatesAutoresizingMaskIntoConstraints = false
        return cnv
    }()
    
    let expireLabel: UILabel = {
        let cnl = UILabel()
        cnl.textColor = #colorLiteral(red: 0.2285108566, green: 0.546705544, blue: 0.845690906, alpha: 1)
        cnl.text = "Expire On"
        cnl.font = UIFont.systemFont(ofSize: 13)
        cnl.translatesAutoresizingMaskIntoConstraints = false
        return cnl
    }()
    
    let expireTf: UITextField = {
        let cnl = UITextField()
        cnl.textColor = UIColor.darkGray
        cnl.text = "07/20"
        cnl.borderStyle = .none
        cnl.font = UIFont.boldSystemFont(ofSize: 15)
        cnl.translatesAutoresizingMaskIntoConstraints = false
        return cnl
    }()
    
    let expireView: UIView = {
        let cnv = UIView()
        cnv.backgroundColor = UIColor.init(white: 0.9, alpha: 1)
        cnv.translatesAutoresizingMaskIntoConstraints = false
        return cnv
    }()
    
    let addCardButton: UIButton = {
        let button = UIButton()
        button.setTitle("Add New Card", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.1403488219, green: 0.1641628742, blue: 0.1974385381, alpha: 1)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(AddCardAction), for: .touchUpInside)
        return button
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
        addSubview(addCardLabel)
        addSubview(cardNumberLabel)
        addSubview(cardNumberTf)
        addSubview(cardNumberView)
        addSubview(cardOwnerLabel)
        addSubview(cardOwnerTf)
        addSubview(cardOwnerView)
        addSubview(issuedLabel)
        addSubview(issuedTf)
        addSubview(issuedView)
        addSubview(expireLabel)
        addSubview(expireTf)
        addSubview(expireView)
        addSubview(addCardButton)
    }
    
    func setupConstraints() {
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0(200)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":addCardLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-10-[v0(20)]-30-[v1(20)]-10-[v2(20)]-5-[v3(2)]-20-[v4(20)]-10-[v5(20)]-5-[v6(2)]-20-[v7(20)]-10-[v8(20)]-5-[v9(2)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":addCardLabel,"v1":cardNumberLabel,"v2":cardNumberTf,"v3":cardNumberView,"v4":cardOwnerLabel,"v5":cardOwnerTf,"v6":cardOwnerView,"v7":issuedLabel,"v8":issuedTf,"v9":issuedView]))
         addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0(200)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":cardNumberLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0(200)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":cardNumberTf]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":cardNumberView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0(160)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":cardOwnerLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0(160)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":cardOwnerTf]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":cardOwnerView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0(160)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":issuedLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0(160)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":issuedTf]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0(\(UIScreen.main.bounds.width / 2.5))]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":issuedView]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[v0(160)]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":expireLabel]))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[v0(160)]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":expireTf]))
        expireLabel.topAnchor.constraint(equalTo: issuedLabel.topAnchor).isActive = true
        expireLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        expireTf.topAnchor.constraint(equalTo: issuedLabel.bottomAnchor,constant:10).isActive = true
        expireTf.heightAnchor.constraint(equalToConstant: 20).isActive = true
        expireView.topAnchor.constraint(equalTo: expireTf.bottomAnchor,constant:5).isActive = true
        expireView.heightAnchor.constraint(equalToConstant: 2).isActive = true
        expireView.leftAnchor.constraint(equalTo: expireLabel.leftAnchor).isActive = true
        expireView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 2.5).isActive = true
        addCardButton.topAnchor.constraint(equalTo: expireView.bottomAnchor, constant: 20).isActive = true
        addCardButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        addCardButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        addCardButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    @objc func AddCardAction() {
        paymentViewController?.goToCongratulation()
    }
}
