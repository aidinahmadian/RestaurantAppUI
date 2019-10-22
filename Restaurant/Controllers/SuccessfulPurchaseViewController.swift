//
//  CongratulationViewController.swift
//  Restaurant
//
//  Created by aidin ahmadian on 10/22/19.
//  Copyright © 2019 aidin ahmadian. All rights reserved.
//  https://github.com/aidinahmadian

import UIKit

class SuccessfulPurchaseViewController: UIViewController {
    
    
    // MARK: Creating (UILabels / UIImageViews / UIViews / UIButtons) Programmatically For our SuccessfulPurchaseViewController
    
    
    var backgroundImage: UIImageView = {
       var bi = UIImageView()
        bi.contentMode = .scaleToFill
        bi.clipsToBounds = true
        bi.translatesAutoresizingMaskIntoConstraints = false
        return bi
    }()
    
    let purchaseView : UIView = {
       let cv = UIView()
        cv.backgroundColor = .white //#colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        cv.layer.cornerRadius = 15
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.alpha = 0.5
        return cv
    }()
    
    let purchaseImageView: UIImageView = {
        let civ = UIImageView()
        civ.tintColor = UIColor.white
        civ.image = UIImage(named: "check")
        civ.contentMode = .scaleToFill
        civ.translatesAutoresizingMaskIntoConstraints = false
        return civ
    }()
    
    let circledView: UIView = {
        let cv = UIView()
        cv.backgroundColor = UIColor.init(white: 0.95, alpha: 0.5)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.layer.masksToBounds = true
        cv.layer.cornerRadius = 40
        return cv
    }()
    
    let circledViewGreen: UIView = {
        let cv = UIView()
        cv.backgroundColor = .green // #colorLiteral(red: 0.2745098174, green: 0.4862745106, blue: 0.1411764771, alpha: 1)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.layer.masksToBounds = true
        cv.alpha = 0.5
        cv.layer.cornerRadius = 60
        return cv
    }()
    
    let purchaseLabel: UILabel = {
        let cl = UILabel()
        cl.text = "Purchase was successful"
        cl.textColor = .green
        cl.numberOfLines = 0
        cl.textAlignment = .center
        cl.font = UIFont.systemFont(ofSize: 35)
        cl.translatesAutoresizingMaskIntoConstraints = false
        return cl
    }()
    
    let purchaseDescription: UILabel = {
        let cl = UILabel()
        cl.text = "Your Payment is successful. All details are sent on your provided mail"
        cl.textColor = .darkGray //UIColor.white
        cl.font = UIFont.systemFont(ofSize: 15)
        cl.translatesAutoresizingMaskIntoConstraints = false
        cl.textAlignment = .center
        cl.numberOfLines = 0
        cl.lineBreakMode = .byWordWrapping
        cl.sizeToFit()
        return cl
    }()
    
    let okButton: UIButton = {
        let button = UIButton()
        button.setTitle("Back to Home", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.07164370269, green: 0.3993143439, blue: 0.9998579621, alpha: 1)
        //button.backgroundColor = #colorLiteral(red: 0.07470899075, green: 0.8069066405, blue: 0.1346865594, alpha: 1)
        button.setTitleColor(.white , for: .normal)
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        button.addTarget(self, action: #selector(okAction), for: .touchUpInside)
        return button
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupView()
        setupConstraints()
    }
    
    
    // MARK: Setup Functions/Constraints Programmatically Using NSLayoutConstraint
    
    
    func setupView() {
        navigationController?.navigationBar.isHidden = true
        view.addSubview(backgroundImage)
        view.addSubview(circledViewGreen)
        view.addSubview(purchaseView)
        view.addSubview(circledView)
        view.addSubview(purchaseImageView)
        view.addSubview(purchaseLabel)
        view.addSubview(purchaseDescription)
        view.addSubview(okButton)
    }
    
    func setupConstraints() {
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":backgroundImage]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":backgroundImage]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":purchaseView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":purchaseView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-130-[v0(80)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":circledView]))
        circledView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        circledView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-110-[v0(120)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":circledViewGreen]))
        circledViewGreen.widthAnchor.constraint(equalToConstant: 120).isActive = true
        circledViewGreen.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-150-[v0(40)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":purchaseImageView]))
        purchaseImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        purchaseImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        purchaseLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        purchaseLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: -50).isActive = true
        purchaseLabel.widthAnchor.constraint(equalToConstant: 280).isActive = true
        purchaseLabel.heightAnchor.constraint(equalToConstant: 100).isActive = true
        purchaseDescription.leftAnchor.constraint(equalTo: purchaseView.leftAnchor,constant: 20).isActive = true
        purchaseDescription.rightAnchor.constraint(equalTo: purchaseView.rightAnchor,constant: -20).isActive = true
        purchaseDescription.heightAnchor.constraint(equalToConstant: 200).isActive = true
        purchaseDescription.topAnchor.constraint(equalTo: purchaseLabel.topAnchor, constant: 50).isActive = true
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-50-[v0]-50-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":okButton]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[v0(60)]-50-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":okButton]))
    }
    
    @objc func okAction() {
        let homeViewController = HomeViewController()
        navigationController?.pushViewController(homeViewController, animated: true)
    }
}
