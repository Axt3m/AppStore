//
//  AppCell.swift
//  AppStore
//
//  Created by Angela Terao on 21/04/2023.
//

import UIKit

class AppCell: UICollectionViewCell {
    
    var app: App? {
        didSet {
            if let name = app?.name {
                nameLabel.text = name
            }
            
            categoryLabel.text = app?.category
            
            if let price = app?.price?.stringValue {
                priceLabel.text = "$\(price)"
            } else {
                priceLabel.text = ""
            }
            
            if let imageName = app?.nameImage {
                imageView.image = UIImage(named: imageName)
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.layer.cornerRadius = 18
        iv.contentMode = .scaleAspectFill
        iv.layer.masksToBounds = true
        
        return iv
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Disney Build it: Frozen"
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    
    let categoryLabel: UILabel = {
        let label = UILabel()
        label.text = "Entertainment"
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = .darkGray
        return label
    }()
    
    let priceLabel: UILabel = {
        let label = UILabel()
        label.text = "$3.99"
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 13)
        return label
    }()
    
    private func setupViews() {
        
        addSubview(imageView)
        addSubview(nameLabel)
        addSubview(categoryLabel)
        addSubview(priceLabel)
        
        imageView.frame = CGRect(x: 0, y: 0, width: frame.width, height: frame.width)
        nameLabel.frame = CGRect(x: 0, y: frame.width + 2, width: frame.width, height: 40)
        categoryLabel.frame = CGRect(x: 0, y: frame.width + 38, width: frame.width, height: 20)
        priceLabel.frame = CGRect(x: 0, y: frame.width + 56, width: frame.width, height: 20)
        
//        backgroundColor = .black
        
    }
    
}
