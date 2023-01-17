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
    
    // MARK: - Lifecycle

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
