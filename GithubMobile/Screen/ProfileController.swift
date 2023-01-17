//
//  ProfileController.swift
//  GithubMobile
//
//  Created by AKIN on 16.01.2023.
//

import UIKit

private let reuseIdentifier = "ProfileCell"

final class ProfileController: UITableViewController {
    
    // MARK: Properties
    
    private let headerView = ProfileHeaderView()
    private let footerView = ProfileFooterView()
    
    private lazy var settingsButton: UIBarButtonItem = {
        let button = UIBarButtonItem(image: UIImage(systemName: "gearshape"), style: .done, target: self, action: #selector(showSettings))
        return button
    }()
    
    private lazy var uploadButton: UIBarButtonItem = {
        let button = UIBarButtonItem(image: UIImage(systemName: "square.and.arrow.up"), style: .done, target: self, action: #selector(showSettings))
        return button
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    // MARK: - Helpers
    
    func configureUI() {
        
        navigationItem.setRightBarButtonItems([uploadButton, settingsButton], animated: true)
        
        tableView.separatorStyle = .none
        tableView.rowHeight = 80
        tableView.register(ProfileCell.self, forCellReuseIdentifier: reuseIdentifier)
        
        tableView.tableHeaderView = headerView
        tableView.tableFooterView = footerView
        headerView.frame = .init(x: 0, y: 0, width: view.frame.width, height: 290)
        footerView.frame = .init(x: 0, y: 0, width: view.frame.width, height: 230)
        
    }
    
    // MARK: - Selectors
    
    @objc func showSettings() {
        
    }

}

// MARK: - UITableViewDelegate-Datasource

extension ProfileController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->     UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! ProfileCell
        return cell
    }
}
