//
//  ViewController.swift
//  Fantasy Disc Golf
//
//  Created by Shane Grim on 4/24/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var logoImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        logoImage.layer.masksToBounds = true
        logoImage.layer.cornerRadius = logoImage.bounds.width / 2
    }

}

