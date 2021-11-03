//
//  SnapSendViewController.swift
//  Snapchat
//
//  Created by Mac 05 on 10/28/21.
//  Copyright © 2021 Kaarstthenn. All rights reserved.
//

import UIKit

class SnapSendViewController: UIViewController, UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var imageImage: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var contactButton: UIButton!
    
    var imagen = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagen.delegate = self
    }
    @IBAction func cameraTapped(_ sender: Any) {
        imagen.sourceType = .photoLibrary
        present(imagen, animated: true,completion: nil)
    }
    @IBAction func contactTapped(_ sender: Any) {
    }
    
}
