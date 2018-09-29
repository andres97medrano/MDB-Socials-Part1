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
        logoutButton = UIButton(frame: CGRect(x: 0, y: view.frame.height / 10, width: view.frame.width, height: 50))
        logoutButton.setTitle("LOG OUT", for: .normal)
        logoutButton.backgroundColor = .red
        logoutButton.addTarget(self, action: #selector(logoutButtonClicked), for: .touchUpInside)
        view.addSubview(logoutButton)
    }
    
    func createFeedView()
    {
        FeedTableView = UITableView(frame: CGRect(x: view.frame.width / 12, y: view.frame.height / 5, width: 10 * view.frame.width / 12, height: 3.5 * view.frame.height / 5))
        FeedTableView.delegate = self
        FeedTableView.dataSource = self
        FeedTableView.register(FeedTableViewCell.self, forCellReuseIdentifier: "TVcell")
    
        view.addSubview(FeedTableView)
    }

    func setupNavigationBar()
    {
        navigationItem.title = "Socials"
        navigationController?.navigationBar.barTintColor = UIColor.black
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 20)]
        navigationController?.isNavigationBarHidden = true

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
