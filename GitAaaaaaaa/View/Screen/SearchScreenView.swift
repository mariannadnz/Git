//
//  SearchScreenView.swift
//  GitHub
//
//  Created by unicred on 01/02/23.
//

import UIKit

class SearchScreenCustomView: UIView {
    
    
    lazy var background: UIView = {
        let background = UIView()
        
        return background
        
    }()
    
    lazy var logoLbl: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "github")
        imageView.contentMode = .scaleAspectFit
        imageView.layer.masksToBounds = true
        return imageView
    }()
    
    lazy var userTxtField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "   User"
        textField.layer.masksToBounds = true
        textField.text = "kaueludovico"
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.layer.cornerRadius = 8
        textField.layer.borderWidth = 1
        textField.layer.backgroundColor = UIColor.white.cgColor
        textField.layer.borderColor = TINT_COLOR.cgColor
        return textField
    }()
    
    
    lazy var searchButton: UIButton = {
        let button = UIButton(configuration: .filled())
        button.setTitle("Search", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubviews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("UAAAAbvbbbbbbbbbbbbbbbb")
    }
    
    func addSubviews() {
        
        addSubview(background)
        background.addSubview(userTxtField)
        background.addSubview(searchButton)
        background.addSubview(logoLbl)
        addConstraints()
        
        
    }
    
    func addConstraints() {
        
        background.anchor(
            top: self.topAnchor,
            leading: self.leadingAnchor,
            bottom: self.bottomAnchor,
            trailing: self.trailingAnchor)
        
        logoLbl.anchor(
            top: background.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 80, left: 0, bottom: 0, right: 0),
            size: .init(width: 300, height: 300))
        logoLbl.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        
        userTxtField.anchor(
            top: logoLbl.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top:310, left: 0, bottom: 0, right: 0),
            size: .init(width: 320, height: 50))
        userTxtField.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        searchButton.anchor(
            top: userTxtField.topAnchor,
            leading: nil,
            bottom: nil,
            trailing: nil,
            padding: .init(top: 70, left: 0, bottom: 50, right: 0),
            size: .init(width: 220, height: 50))
        searchButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
    }
}
