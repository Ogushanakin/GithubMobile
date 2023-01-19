//
//  CollectionViewCell.swift
//  GithubMobile
//
//  Created by AKIN on 18.01.2023.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CollectionViewCell"
    
    private let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.clipsToBounds = true
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 26 / 2
        iv.image = UIImage(named: "oguzhan")
        return iv
    }()
    
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Ogushanakin"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        return label
    }()
    
    let projectnameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "GithubMobile"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Github Mobile App Profile Screen UI Design"
        label.textColor = .white
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        return label
    }()
    
    private let starImageView: UIImageView = {
        let iv = UIImageView()
        iv.clipsToBounds = true
        iv.tintColor = .gray
        iv.contentMode = .scaleAspectFill
        iv.layer.cornerRadius = 16 / 2
        iv.image = UIImage(systemName: "star")
        return iv
    }()
    
    private let likecountLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "0"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    private let orangeView: UIView = {
        let iv = UIView()
        iv.backgroundColor = .systemRed
        iv.layer.cornerRadius = 12 / 2
        return iv
    }()
    
    private let swiftLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "Swift"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = #colorLiteral(red: 0.0862745098, green: 0.08187741786, blue: 0.1201933995, alpha: 0.8366100993)
        
        addSubview(profileImageView)
        profileImageView.setDimensions(height: 26, width: 26)
        profileImageView.anchor(top: self.topAnchor, left: self.leftAnchor, paddingTop: 10, paddingLeft: 10)
        
        addSubview(usernameLabel)
        usernameLabel.centerY(inView: profileImageView)
        usernameLabel.anchor(left: profileImageView.rightAnchor, paddingLeft: 10)
        
        addSubview(projectnameLabel)
        projectnameLabel.anchor(top: profileImageView.bottomAnchor, left: self.leftAnchor,
                                paddingTop: 6, paddingLeft: 10)
        
        addSubview(descriptionLabel)
        descriptionLabel.anchor(top: projectnameLabel.bottomAnchor, left: self.leftAnchor,
                                right: self.rightAnchor, paddingTop: 10, paddingLeft: 10,
                                paddingRight: 20)
        
        addSubview(starImageView)
        starImageView.setDimensions(height: 16, width: 16)
        starImageView.anchor(top: descriptionLabel.bottomAnchor, left: self.leftAnchor,
                             paddingTop: 10, paddingLeft: 10)
        
        addSubview(likecountLabel)
        likecountLabel.centerY(inView: starImageView)
        likecountLabel.anchor(left: starImageView.rightAnchor, paddingLeft: 4)
        
        addSubview(orangeView)
        orangeView.centerY(inView: likecountLabel)
        orangeView.setDimensions(height: 12, width: 12)
        orangeView.anchor(left: likecountLabel.rightAnchor, paddingLeft: 20)
        
        addSubview(swiftLabel)
        swiftLabel.centerY(inView: orangeView)
        swiftLabel.anchor(left: orangeView.rightAnchor, paddingLeft: 4)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
}
