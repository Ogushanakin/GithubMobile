//
//  ProfileFooterView.swift
//  GithubMobile
//
//  Created by AKIN on 16.01.2023.
//

import UIKit

final class ProfileFooterView: UIView {
    
    // MARK: - Properties
    
    let projectNames: [String] = ["GithubMobile", "GOAT", "QUİETFORM"]
    let projectDescriptions: [String] = ["Github Mobile App Profile Screen UI Design", "Live Scoreboard Screen UI", "Product Detail Page Design"]
    
    static let identifier = "CollectionViewCell"
    
    private let pinnedIcon: UIImageView = {
        let icon = UIImageView()
        icon.image = UIImage(systemName: "pin")
        icon.tintColor = .gray
        return icon
    }()
    
    private let pinnedLabel: UILabel = {
        let label = UILabel()
        label.text = "Pinned"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        return label
    }()
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 280, height: 160)
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)
        return collectionView
    }()
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        collectionView.delegate = self
        collectionView.dataSource = self
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        
        addSubview(pinnedIcon)
        pinnedIcon.setDimensions(height: 16, width: 16)
        pinnedIcon.anchor(top: self.topAnchor, left: self.leftAnchor,
                          paddingTop: 30, paddingLeft: 20)
        
        addSubview(pinnedLabel)
        pinnedLabel.centerY(inView: pinnedIcon)
        pinnedLabel.anchor(left: pinnedIcon.rightAnchor, paddingLeft: 20)
        
        addSubview(collectionView)
        collectionView.anchor(top: self.topAnchor, left: self.leftAnchor,
                              bottom: self.bottomAnchor, right: self.rightAnchor,
                              paddingTop: 50, paddingLeft: 20)
        
    }
}

// MARK: - UICollectionViewDelegate - UICollectionViewDataSource

extension ProfileFooterView: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath) as? CollectionViewCell else {
            return UICollectionViewCell()
        }
        cell.layer.cornerRadius = 6
        cell.descriptionLabel.text = projectDescriptions[indexPath.row]
        cell.projectnameLabel.text = projectNames[indexPath.row]
        return cell
    }
    
}
