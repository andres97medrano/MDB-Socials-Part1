//
//  SignUpViewController.swift
//  MDBSocials
//
//  Created by Andrés Medrano on 9/22/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController, UITextFieldDelegate
{
    // ===================================== USER-INTERFACE =====================================
    
    // TEXT FIELDS
    var fullnameTextField : UITextField!
    var usernameTextField : UITextField!
    var emailTextField : UITextField!
    var passwordTextField : UITextField!
    
    // BUTTONS
    var signupButton : RoundedWhiteButton!
    
    // LABELS
    var signupLabel : UILabel!
    
    // IMAGE
    var mdbImageView : UIImageView!
    
    
//    // passwordTextField.delegate = self
//
//    emailTextField.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)
//    passwordTextField.addTarget(self, action: #selector(textFieldChanged), for: .editingChanged)
    
    // ===========================================================================================
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set-up the Screen
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        displaySubtitle()
        displayFullNameField()
        displayUsernameField()
        displayEmailField()
        displayPasswordField()
        displaySignupButton()
    }
    
    override func viewWillAppear(_ animated: Bool)
    {
    }
    
    @objc func signupButtonClicked() {
        guard let fullName = fullnameTextField.text else { return }
        guard let username = usernameTextField.text else { return }
        guard let email = emailTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        
        Auth.auth().createUser(withEmail: email, password: password) { user, error in
            if error == nil && user != nil {
                print("SUCCESS CREATING THE USER!")
                self.dismiss(animated: false, completion: nil)
                // pop view controller? 
            }
            else {
                print("ERROR CREATING USER: \(String(describing: error?.localizedDescription))")
            }
        }
        self.dismiss(animated: false, completion: nil)

        }
    
    @objc func textFieldChanged(_ target:UITextField) {
        let fullName = fullnameTextField.text
        let username = usernameTextField.text
        let email = emailTextField.text
        let password = passwordTextField.text
        
        let formFilled = fullName != nil && fullName != "" && username != nil && username != "" && email != nil && email != "" && password != nil && password != ""
        setSignupButton(enabled: formFilled)
    }
}
