//
//  CollectionViewCell.swift
//  GithubMobile
//
//  Created by AKIN on 18.01.2023.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CollectionViewCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = #colorLiteral(red: 0.0862745098, green: 0.08187741786, blue: 0.1201933995, alpha: 0.8366100993)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
    }
}
