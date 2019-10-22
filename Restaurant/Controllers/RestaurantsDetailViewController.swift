//
//  MoreInfoViewController.swift
//  Restaurant
//
//  Created by aidin ahmadian on 10/17/19.
//  Copyright © 2019 aidin ahmadian. All rights reserved.
//  https://github.com/aidinahmadian

import UIKit

class RestaurantsDetailViewController: UIViewController {
    
    var restaurantImagesView: RestaurantImageView = {
        let hiv = RestaurantImageView()
        hiv.translatesAutoresizingMaskIntoConstraints = false
        return hiv
    }()
    
    
    // MARK: Creating (UILabels / UIImageViews / UIButtons) Programmatically For our RestaurantsDetailViewController
    
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.2285108566, green: 0.546705544, blue: 0.845690906, alpha: 1) // #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        label.text = "24 $"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 14)
        return label
    }()
    
    let restaurantNameLabel: UILabel = {
        let hnl = UILabel()
        hnl.textColor = UIColor.darkGray
        hnl.text = "Bulrush"
        hnl.translatesAutoresizingMaskIntoConstraints = false
        hnl.font = UIFont.boldSystemFont(ofSize: 16)
        return hnl
    }()
    
    let restaurantStarLabel: UILabel = {
        let hsl = UILabel()
        hsl.textColor = UIColor.init(white: 0.75, alpha: 1)
        hsl.translatesAutoresizingMaskIntoConstraints = false
        hsl.font = UIFont.systemFont(ofSize: 16)
        hsl.textAlignment = .right
        return hsl
    }()
    
    let restaurantDescriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.gray
        label.text = "The hottest restaurants in Toronto right now are dishing out beef tartare and vegan meatloaf, Thai dumplings and thousand-layer lasagnas, and coveted bowls of ramen and rice noodles. To get into these places, you’re either going to need a reservation or a superhuman amount of patience, but just tell yourself: the cheesecake is worth it. "
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        label.sizeToFit()
        return label
    }()
    
    let firstStarImageView: UIImageView = {
        let fsiv = UIImageView()
        fsiv.translatesAutoresizingMaskIntoConstraints = false
        fsiv.image = UIImage(named: "star")
        fsiv.contentMode = .scaleAspectFill
        fsiv.clipsToBounds = true
        return fsiv
    }()
    
    let secondStarImageView: UIImageView = {
        let fsiv = UIImageView()
        fsiv.translatesAutoresizingMaskIntoConstraints = false
        fsiv.image = UIImage(named: "star")
        fsiv.contentMode = .scaleAspectFill
        fsiv.clipsToBounds = true
        return fsiv
    }()
    
    let thirdStarImageView: UIImageView = {
        let fsiv = UIImageView()
        fsiv.translatesAutoresizingMaskIntoConstraints = false
        fsiv.image = UIImage(named: "star")
        fsiv.contentMode = .scaleAspectFill
        fsiv.clipsToBounds = true
        return fsiv
    }()
    
    let fourthStarImageView: UIImageView = {
        let fsiv = UIImageView()
        fsiv.translatesAutoresizingMaskIntoConstraints = false
        fsiv.image = UIImage(named: "star")
        fsiv.contentMode = .scaleAspectFill
        fsiv.clipsToBounds = true
        return fsiv
    }()
    
    let fiveStarImageView: UIImageView = {
        let fsiv = UIImageView()
        fsiv.translatesAutoresizingMaskIntoConstraints = false
        fsiv.image = UIImage(named: "star")
        fsiv.contentMode = .scaleAspectFill
        fsiv.clipsToBounds = true
        return fsiv
    }()
    
    let nightLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.2285108566, green: 0.546705544, blue: 0.845690906, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "Numbers"
        return label
    }()
    
    let roomLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.2285108566, green: 0.546705544, blue: 0.845690906, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "Drinks"
        return label
    }()
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.textColor = #colorLiteral(red: 0.2285108566, green: 0.546705544, blue: 0.845690906, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "Date"
        return label
    }()
    
    let nightIncrementView: AmountView = {
        let niv = AmountView()
        niv.clipsToBounds = true
        niv.layer.cornerRadius = 3
        niv.translatesAutoresizingMaskIntoConstraints = false
        return niv
    }()
    
    let valueDateLabel: UILabel = {
        let vdl = UILabel()
        vdl.textAlignment = .center
        vdl.textColor = UIColor.darkGray
        vdl.translatesAutoresizingMaskIntoConstraints = false
        vdl.font = UIFont.systemFont(ofSize: 11)
        return vdl
    }()
    
    let roomIncrementView: AmountView = {
        let riv = AmountView()
        riv.clipsToBounds = true
        riv.layer.cornerRadius = 3
        riv.translatesAutoresizingMaskIntoConstraints = false
        return riv
    }()
    
    let dateView: UIView = {
        let dv = UIView()
        dv.backgroundColor = UIColor.init(white: 0.95, alpha: 1)
        dv.clipsToBounds = true
        dv.layer.cornerRadius = 3
        dv.translatesAutoresizingMaskIntoConstraints = false
        return dv
    }()
    
    let buyButton: UIButton = {
        let button = UIButton()
        button.setTitle("Buy Now", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.1403488219, green: 0.1641628742, blue: 0.1974385381, alpha: 1)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(BuyAction), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupView()
        setupConstraints()
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 0.1403488219, green: 0.1641628742, blue: 0.1974385381, alpha: 1)
    }
    
    
    // MARK: Setup Functions/Constraints Programmatically Using NSLayoutConstraint
    
    
    func setupNavigationBar() {
        navigationItem.title = "Details"
    }
    
    func setupView() {
        view.backgroundColor = UIColor.white
        view.addSubview(restaurantImagesView)
        view.addSubview(restaurantNameLabel)
        view.addSubview(restaurantStarLabel)
        view.addSubview(firstStarImageView)
        view.addSubview(secondStarImageView)
        view.addSubview(thirdStarImageView)
        view.addSubview(fourthStarImageView)
        view.addSubview(fiveStarImageView)
        view.addSubview(priceLabel)
        view.addSubview(restaurantDescriptionLabel)
        view.addSubview(nightLabel)
        view.addSubview(roomLabel)
        view.addSubview(dateLabel)
        view.addSubview(nightIncrementView)
        view.addSubview(roomIncrementView)
        view.addSubview(dateView)
        dateView.addSubview(valueDateLabel)
        view.addSubview(buyButton)
        setDate()
    }
    
    func setupConstraints() {
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":restaurantImagesView]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-65-[v0(\((view.frame.height - 114) / 2.8))]-20-[v1(20)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":restaurantImagesView,"v1":restaurantNameLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0(250)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":restaurantNameLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[v0(250)]-10-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":restaurantStarLabel]))
        restaurantStarLabel.topAnchor.constraint(equalTo: restaurantImagesView.bottomAnchor,constant: 20).isActive = true
        restaurantStarLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:[v0(10)]-5-[v1(10)]-5-[v2(10)]-5-[v3(10)]-5-[v4(10)]-20-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":firstStarImageView,"v1":secondStarImageView,"v2":thirdStarImageView,"v3":fourthStarImageView,"v4":fiveStarImageView]))
        firstStarImageView.topAnchor.constraint(equalTo: restaurantStarLabel.bottomAnchor,constant: 10).isActive = true
        secondStarImageView.topAnchor.constraint(equalTo: firstStarImageView.topAnchor).isActive = true
        thirdStarImageView.topAnchor.constraint(equalTo: firstStarImageView.topAnchor).isActive = true
        fourthStarImageView.topAnchor.constraint(equalTo: firstStarImageView.topAnchor).isActive = true
        fiveStarImageView.topAnchor.constraint(equalTo: firstStarImageView.topAnchor).isActive = true
        priceLabel.topAnchor.constraint(equalTo: firstStarImageView.topAnchor).isActive = true
        firstStarImageView.heightAnchor.constraint(equalToConstant: 10).isActive = true
        secondStarImageView.heightAnchor.constraint(equalTo: firstStarImageView.heightAnchor).isActive = true
        thirdStarImageView.heightAnchor.constraint(equalTo: firstStarImageView.heightAnchor).isActive = true
        fourthStarImageView.heightAnchor.constraint(equalTo: firstStarImageView.heightAnchor).isActive = true
        fiveStarImageView.heightAnchor.constraint(equalTo: firstStarImageView.heightAnchor).isActive = true
        priceLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0(60)]", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":priceLabel]))
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0]-10-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":restaurantDescriptionLabel]))
        restaurantDescriptionLabel.topAnchor.constraint(equalTo: firstStarImageView.bottomAnchor,constant: 5).isActive = true
        restaurantDescriptionLabel.heightAnchor.constraint(equalToConstant: 200).isActive = true
        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-10-[v0(100)]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":nightLabel]))
        nightLabel.topAnchor.constraint(equalTo: restaurantDescriptionLabel.bottomAnchor).isActive = true
        nightLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        roomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        roomLabel.widthAnchor.constraint(equalToConstant: 60).isActive = true
        roomLabel.topAnchor.constraint(equalTo: nightLabel.topAnchor).isActive = true
        roomLabel.heightAnchor.constraint(equalTo: nightLabel.heightAnchor).isActive = true
        dateLabel.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -40).isActive = true
        dateLabel.widthAnchor.constraint(equalToConstant: 60).isActive = true
        dateLabel.topAnchor.constraint(equalTo: nightLabel.topAnchor).isActive = true
        dateLabel.heightAnchor.constraint(equalTo: nightLabel.heightAnchor).isActive = true
        nightIncrementView.leftAnchor.constraint(equalTo: nightLabel.leftAnchor).isActive = true
        nightIncrementView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        nightIncrementView.topAnchor.constraint(equalTo: nightLabel.bottomAnchor,constant: 10).isActive = true
        nightIncrementView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        roomIncrementView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        roomIncrementView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        roomIncrementView.topAnchor.constraint(equalTo: nightIncrementView.topAnchor).isActive = true
        roomIncrementView.heightAnchor.constraint(equalTo: nightIncrementView.heightAnchor).isActive = true
        dateView.rightAnchor.constraint(equalTo: view.rightAnchor,constant: -40).isActive = true
        dateView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        dateView.topAnchor.constraint(equalTo: nightIncrementView.topAnchor).isActive = true
        dateView.heightAnchor.constraint(equalTo: nightIncrementView.heightAnchor).isActive = true
        buyButton.topAnchor.constraint(equalTo: dateView.bottomAnchor, constant: 20).isActive = true
        buyButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        buyButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        buyButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        dateView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":valueDateLabel]))
        dateView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0":valueDateLabel]))
    }
    
    func setDate() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        valueDateLabel.text = formatter.string(from: date)
    }
    
    @objc func BuyAction() {
        let paymentViewController = PaymentViewController()
        navigationController?.pushViewController(paymentViewController, animated: true)
    }
}
