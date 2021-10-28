//
//  ViewController.swift
//  Snapchat
//
//  Created by Mac 05 on 10/27/21.
//  Copyright © 2021 Kaarstthenn. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import GoogleSignIn

class inicioSesionViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func IniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!){
            (user, error) in
            print("Intentando iniciar sesion")
            if(error != nil){
                print("Se presento el siguiente error \(error)")
            }else{
                print("Inicio de sesion exitoso")
            }
        }
    }
    @IBAction func IniciarSesionGoogleTapped(_ sender: Any) {
        
    }
    
}

