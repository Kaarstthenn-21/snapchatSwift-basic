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
import FacebookCore
import FacebookLogin


class inicioSesionViewController: UIViewController,LoginButtonDelegate {
   

    override func viewDidLoad() {
        super.viewDidLoad()
         // Do any additional setup after loading the view, typically from a nib.
               let loginButton = LoginButton(readPermissions: [.publicProfile])
               loginButton.center = view.center
               loginButton.delegate = self
               self.view.addSubview(loginButton)
               
               if let accessToken = AccessToken.current {
                   // User is already logged in with facebook
                   print("User is already logged in")
                   print(accessToken)
               }
    }
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBAction func IniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!){
            (user, error) in
            print("Intentando iniciar sesion")
            if(error != nil){
                print("Se presento el siguiente error \(error)")
                Auth.auth().createUser(withEmail: self.emailTextField.text!, password: self.passwordTextField.text!) { (user, error) in
                    print("Intentando crear un usuario")
                    if (error != nil){
                        print("Se presento un error")
                    }else{
                        print("Inicio de sesion exitoso")
                        self.performSegue(withIdentifier: "iniciarsesionsegue", sender: nil)
                    }
                }
            }else{
                print("Inicio de sesion exitoso")
                self.performSegue(withIdentifier: "iniciarsesionsegue", sender: nil)
            }
        }
    }
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
           <#code#>
       }
       
       func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
           <#code#>
       }
    
    @IBAction func signIn(_ sender: Any) {
        
    }
}
