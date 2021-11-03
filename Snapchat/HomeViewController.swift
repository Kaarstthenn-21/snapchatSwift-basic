//
//  HomeViewController.swift
//  Snapchat
//
//  Created by Mac 05 on 10/28/21.
//  Copyright © 2021 Kaarstthenn. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func cerrarSesionTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
