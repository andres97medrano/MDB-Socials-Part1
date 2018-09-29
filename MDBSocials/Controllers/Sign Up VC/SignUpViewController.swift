//
//  SignUpViewController.swift
//  MDBSocials
//
//  Created by Andrés Medrano on 9/22/18.
//  Copyright © 2018 Andrés Medrano. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController
{
    // ===================================== USER-INTERFACE =====================================
    
    // TEXT FIELDS
    var fullnameTextField : UITextField!
    var usernameTextField : UITextField!
    var emailTextField : UITextField!
    var passwordTextField : UITextField!
    
    // BUTTONS
    var signupButton : RoundedWhiteButton!
    var returnButton : UIButton!
    
    // LABELS
    var signupLabel : UILabel!
    
    // IMAGE
    var mdbImageView : UIImageView!
    
    
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
        displayReturnButton()
        addFieldListeners()
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        fullnameTextField.becomeFirstResponder()
//        NotificationCenter.default.addObserver(self, selector:#selector(keyboardWillAppear), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
    }
    
    @objc func signupButtonClicked() {
        guard fullnameTextField.text != nil else { return }
        guard usernameTextField.text != nil else { return }
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
                self.displayAlert(title: "Error", message: String(describing: error?.localizedDescription))
            }
        }
        self.dismiss(animated: false, completion: nil)

        }
    
//    @objc func keyboardWillAppear(notification: NSNotification){
//        
//        let info = notification.userInfo!
//        let keyboardFrame: CGRect = (info[UIKeyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
//        
//        signupButton.center = CGPoint(x: view.center.x,
//                                        y: view.frame.height - keyboardFrame.height - 16.0 - signupButton.frame.height / 2)
//    }
    
    @objc func textFieldChanged(_ target:UITextField) {
        let fullName = fullnameTextField.text
        let username = usernameTextField.text
        let email = emailTextField.text
        let password = passwordTextField.text
        
        let formFilled = fullName != nil && fullName != "" && username != nil && username != "" && email != nil && email != "" && password != nil && password != ""
        setSignupButton(enabled: formFilled)
    }
    
    @objc func returnButtonClicked() {
        self.dismiss(animated: false, completion: nil)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        get {
            return .lightContent
        }
    }
}
