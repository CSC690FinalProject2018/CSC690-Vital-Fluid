//
//  ViewController.swift
//  Vital Fluid
//
//  Created by Tejasvi Belsare on 12/4/18.
//  Copyright © 2018 Tejasvi Belsare. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var infoViewImages: UIImageView!
    
    @IBOutlet weak var infoTableView: UITableView!
    
    
//    @IBOutlet var infoViewImages: [UIImageView]!
//    @IBOutlet weak var infoTableView: UITableView!
//
//
    @IBOutlet weak var infoNavigationBarButton: UIBarButtonItem!

    @IBAction func infoNavigationBarButtonPressed(_ sender: Any) {
//        if (infoTableView.isHidden == true){
//            infoTableView.isHidden = false
//
//        }
//        else{
            infoTableView.isHidden = false
            infoNavigationBarButton.isEnabled = false
//        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        infoTableView.isHidden = true
        
        
     
    }


}

