//
//  FeedVC-Setup.swift
//  MDBSocials
//
//  Created by Andrés Medrano on 9/22/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit

extension FeedViewController : UITableViewDelegate, UITableViewDataSource {
    
    func displayMDBLogo() {
        mdbImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 175, height: 175))
        mdbImageView.center = CGPoint(x: view.frame.width / 2, y: 2 * view.frame.height / 10)
        mdbImageView.image = UIImage(named: "mdblogo")
        mdbImageView.contentMode = .scaleAspectFit
        self.view.addSubview(mdbImageView)
    }
    
    func displayLogoutButton() {

        logoutBarButton = UIBarButtonItem(title: "Log Out", style: .done, target: self, action: #selector(logoutButtonClicked))
        logoutBarButton.tintColor = UIColor.white
        self.navigationItem.leftBarButtonItem = logoutBarButton
    }
    
    func displayCreatePostButton() {
        createPostBarButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(createPostButtonClicked))
        createPostBarButton.tintColor = UIColor.white
        self.navigationItem.rightBarButtonItem = createPostBarButton
        
    }
    
    func createFeedView()
    {
        FeedTableView = UITableView(frame: CGRect(x: view.frame.width / 12, y: view.frame.height / 14, width: 10 * view.frame.width / 12, height: 4 * view.frame.height / 5))
        FeedTableView.delegate = self
        FeedTableView.dataSource = self
        FeedTableView.register(FeedTableViewCell.self, forCellReuseIdentifier: "TVcell")
    
        view.addSubview(FeedTableView)
    }

    func setupNavigationBar()
    {
        navigationItem.title = "Socials"
        navigationController?.navigationBar.barTintColor = secondaryColor
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 20)]
        navigationController?.isNavigationBarHidden = false

    }

    // ============================== CONFIGURING THE TABLE VIEW AND CELLS ==============================

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return testArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let TVcell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "TVcell")
        TVcell.textLabel?.text = testArray[indexPath.row]
        return TVcell
    }

}
