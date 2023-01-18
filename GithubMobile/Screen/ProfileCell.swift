//
//  ProfileCell.swift
//  GithubMobile
//
//  Created by AKIN on 16.01.2023.
//

import UIKit

final class ProfileCell: UITableViewCell {

    // MARK: - Properties
    
    static let identifier = "ProfileCell"
    
    let iconBackground: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray3
        view.layer.cornerRadius = 8
        return view
    }()
    
    let iconImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "book.closed")
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        image.tintColor = .white
        return image
    }()
    
    let cellLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "Repositories"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    let labelCount: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.text = "23 >"
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        return label
    }()
    
    // MARK: - Lifecycle

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = #colorLiteral(red: 0.0862745098, green: 0.08187741786, blue: 0.1201933995, alpha: 0.8366100993)
        
        addSubview(iconBackground)
        iconBackground.setDimensions(height: 30, width: 30)
        iconBackground.anchor(top: self.topAnchor, left: self.leftAnchor, paddingTop: 14, paddingLeft: 20)
        
        addSubview(iconImage)
        iconImage.setDimensions(height: 16, width: 16)
        iconImage.centerY(inView: iconBackground)
        iconImage.centerX(inView: iconBackground)
        
        addSubview(cellLabel)
        cellLabel.centerY(inView: iconImage)
        cellLabel.anchor(left: iconBackground.rightAnchor, paddingLeft: 20)
        
        addSubview(labelCount)
        labelCount.centerY(inView: cellLabel)
        labelCount.anchor(right: self.rightAnchor, paddingRight: 20)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
