//
//  ProfileHeaderView.swift
//  GithubMobile
//
//  Created by AKIN on 16.01.2023.
//

import UIKit

final class ProfileHeaderView: UIView {
    
    // MARK: - Properties
    
    private let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.clipsToBounds = true
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 50 / 2
        iv.image = UIImage(named: "oguzhan")
        return iv
    }()
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Oğuzhan Akın"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        return label
    }()
    
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Ogushanakin"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        return label
    }()
    
    private let descriptionView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.0862745098, green: 0.08187741786, blue: 0.1201933995, alpha: 0.8366100993)
        view.layer.cornerRadius = 4
        
        let image = UIImageView()
        image.image = UIImage(named: "github")
        image.setDimensions(height: 20, width: 20)
        view.addSubview(image)
        image.anchor(top: view.topAnchor, left: view.leftAnchor,
                     paddingTop: 4, paddingLeft: 10)
        
        let label = UILabel()
        label.textColor = .white
        label.text = "as? iOS Developer"
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        view.addSubview(label)
        label.centerY(inView: image)
        label.anchor(left: image.rightAnchor, paddingLeft: 16)
        
        return view
    }()
    
    private let locationView: UIView = {
        let view = UIView()
        
        let icon = UIImageView()
        icon.image = UIImage(systemName: "mappin")
        icon.tintColor = .darkGray
        icon.setDimensions(height: 20, width: 20)
        
        let label = UILabel()
        label.text = "İstanbul"
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        
        let stack = UIStackView(arrangedSubviews: [icon, label])
        stack.axis = .horizontal
        stack.spacing = 4
        
        view.addSubview(stack)
        stack.anchor(top: view.topAnchor, left: view.leftAnchor,
                     bottom: view.bottomAnchor, right: view.rightAnchor)
        
        return view
    }()
    
    private let twitterView: UIView = {
        let view = UIView()
        
        let icon = UIImageView()
        icon.image = UIImage(systemName: "bird")
        icon.tintColor = .darkGray
        icon.setDimensions(height: 16, width: 20)
        
        let label = UILabel()
        label.text = "@ogushanakin"
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        
        let stack = UIStackView(arrangedSubviews: [icon, label])
        stack.axis = .horizontal
        stack.spacing = 4
        
        view.addSubview(stack)
        stack.anchor(top: view.topAnchor, left: view.leftAnchor,
                     bottom: view.bottomAnchor, right: view.rightAnchor)
        
        return view
    }()
    
    private let followersView: UIView = {
        let view = UIView()
        
        let icon = UIImageView()
        icon.image = UIImage(systemName: "person")
        icon.tintColor = .darkGray
        icon.setDimensions(height: 18, width: 16)
        
        let label = UILabel()
        label.text = " 15 followers ・ 17 following"
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        
        let stack = UIStackView(arrangedSubviews: [icon, label])
        stack.axis = .horizontal
        stack.spacing = 4
        
        view.addSubview(stack)
        stack.anchor(top: view.topAnchor, left: view.leftAnchor,
                     bottom: view.bottomAnchor, right: view.rightAnchor)
        
        return view
    }()
    
    private let trophyView: UIView = {
        let view = UIView()
        
        let icon = UIImageView()
        icon.image = UIImage(systemName: "trophy")
        icon.tintColor = .darkGray
        icon.setDimensions(height: 18, width: 16)
        
        view.addSubview(icon)
        icon.anchor(top: view.topAnchor, left: view.leftAnchor, paddingTop: 6)
        
        let yoloicon = UIImageView()
        yoloicon.image = UIImage(named: "yolo")
        yoloicon.tintColor = .darkGray
        yoloicon.layer.cornerRadius = 30 / 2
        yoloicon.clipsToBounds = true
        yoloicon.contentMode = .scaleAspectFill
        yoloicon.layer.borderColor = UIColor.white.cgColor
        yoloicon.layer.borderWidth = 1.0
        yoloicon.setDimensions(height: 30, width: 30)

        let sharkicon = UIImageView()
        sharkicon.image = UIImage(named: "shark")
        sharkicon.tintColor = .darkGray
        sharkicon.layer.cornerRadius = 30 / 2
        sharkicon.clipsToBounds = true
        sharkicon.contentMode = .scaleAspectFill
        sharkicon.layer.borderColor = UIColor.white.cgColor
        sharkicon.layer.borderWidth = 1.0
        sharkicon.setDimensions(height: 30, width: 30)
        
        let staricon = UIImageView()
        staricon.image = UIImage(named: "star")
        staricon.tintColor = .darkGray
        staricon.layer.cornerRadius = 30 / 2
        staricon.clipsToBounds = true
        staricon.contentMode = .scaleAspectFill
        staricon.layer.borderColor = UIColor.white.cgColor
        staricon.layer.borderWidth = 1.0
        staricon.setDimensions(height: 30, width: 30)
        
        let stack = UIStackView(arrangedSubviews: [yoloicon, sharkicon, staricon])
        stack.axis = .horizontal
        stack.spacing = -6
        
        view.addSubview(stack)
        stack.anchor(left: icon.rightAnchor, paddingLeft: 6)
        
        return view
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        addSubview(profileImageView)
        profileImageView.setDimensions(height: 50, width: 50)
        profileImageView.anchor(top: self.topAnchor, left: self.leftAnchor, paddingLeft: 20)
        
        let nameStack = UIStackView(arrangedSubviews: [nameLabel, usernameLabel])
        nameStack.axis = .vertical
        
        addSubview(nameStack)
        nameStack.centerY(inView: profileImageView)
        nameStack.anchor(left: profileImageView.rightAnchor, paddingLeft: 10)
        
        addSubview(descriptionView)
        descriptionView.anchor(top: profileImageView.bottomAnchor, left: self.leftAnchor,
                               right: self.rightAnchor, paddingTop: 10,
                               paddingLeft: 20, paddingRight: 20, height: 30)
        
        addSubview(locationView)
        locationView.anchor(top: descriptionView.bottomAnchor, left: self.leftAnchor,
                            paddingTop: 10, paddingLeft: 20, width: 100, height: 20)
        
        addSubview(twitterView)
        twitterView.centerY(inView: locationView)
        twitterView.anchor(left: locationView.rightAnchor, paddingLeft: 2)
        
        addSubview(followersView)
        followersView.anchor(top: twitterView.bottomAnchor, left: self.leftAnchor, paddingTop: 10, paddingLeft: 20)
        
        addSubview(trophyView)
        trophyView.anchor(top: followersView.bottomAnchor, left: self.leftAnchor, paddingTop: 10, paddingLeft: 20)
    }
}
