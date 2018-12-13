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
        infoTableView.backgroundView = UIImageView(image: UIImage(named: "blood3.png"))
    
        infoTableView.backgroundColor = UIColor.clear
        
        names = ["Blood donation form","Benefits of blood donation","Tips for blood donation","Eligibility for donating blood", "How your body replaces blood?","What happens to donated blood?"]
        
        identities = ["A","B","C","E","F","G"]

    }
    
    override func loadView() {
        super.loadView()
        infoTableView.delegate = self
        infoTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

//        tableView.tableFooterView = UIView(frame: CGRect.zero)
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
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 103.0
    }
    
//    override func viewWillAppear(_ animated: Bool) {
//        tableView.tableFooterView = UIView(frame: CGRect.zero)   /// to hide the extra cells down
//    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        cell.backgroundColor = UIColor.clear
        cell.backgroundColor = UIColor(white: 1, alpha: 0.5)
    }

}

