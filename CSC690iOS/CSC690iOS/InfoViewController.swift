//
//  ViewController.swift
//  Vital Fluid
//
//  Created by Tejasvi Belsare on 12/4/18.
//  Copyright © 2018 Tejasvi Belsare. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    var names = [String]()
//    names = ["Download Form","Benefits of blood donation","Tips before donating blood","Tips after donating blood","Food Habits","Eligibility for donating blood","What happens with your blood"]
    
    var identities = [String]()

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
        
        names = ["Download Form","Benefits of blood donation","Tips before donating blood","Tips after donating blood","Food Habits","Eligibility for donating blood","What happens with your blood"]
        
        identities = ["A","B","C","D","E","F","G"]

    }
    
    override func loadView() {
        super.loadView()
        infoTableView.delegate = self
        infoTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = names[indexPath.row]
//        cell?.textLabel?.text = String(indexPath.row)
        print (names[indexPath.row])
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vcName = identities[indexPath.row]
        
        let viewCntrl = storyboard?.instantiateViewController(withIdentifier: vcName)
     
        self.navigationController?.pushViewController(viewCntrl!, animated: true)
        

    }

}

