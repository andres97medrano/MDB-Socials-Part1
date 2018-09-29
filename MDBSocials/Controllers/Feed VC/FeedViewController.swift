//
//  FeedViewController.swift
//  MDBSocials
//
//  Created by Andrés Medrano on 9/22/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit
import FirebaseAuth

class FeedViewController: UIViewController
{
    // ===================================== USER-INTERFACE =====================================
    
    // IMAGES
    var mdbImageView : UIImageView!
    
    // BUTTONS

    
    // BAR BUTTON
    var logoutBarButton : UIBarButtonItem!
    var createPostBarButton : UIBarButtonItem!

    // TABLE VIEW
    var FeedTableView : UITableView!
    
    // =====================================      DATA      =====================================
    
    // ARRAYS
    // We need to create an array with all the possible Pokemons searched based on the filters
    var testArray = ["Party Tonight", "Soccer Sesh", "Movie Night", "Free Pizza @ Cory 400"]   // using this array to test the table view cell
    // ===========================================================================================
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)

        setupNavigationBar()
        displayLogoutButton()
        displayCreatePostButton()
        createFeedView()
    }
    
    @objc func logoutButtonClicked() {
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
    }
    
    @objc func createPostButtonClicked() {
        performSegue(withIdentifier: "toNewSocialScreen", sender: self)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            return .lightContent
        }
    }
}
