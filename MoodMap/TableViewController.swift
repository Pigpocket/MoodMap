//
//  TableViewController.swift
//  MoodMap
//
//  Created by Tomas Sidenfaden on 3/7/18.
//  Copyright © 2018 Tomas Sidenfaden. All rights reserved.
//

import Foundation
import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // MARK: Properties
    
    let projects: [String] = ["Develop customer use cases", "Wireframe UX for mobile", "Develop data architecture", "Cloud platform review for off-premise", "Business case development", "Hire recruiter", "Sign new office lease", "Develop MVP schedule", "Hire hacker from Techfair"]
    
    // MARK: Outlets
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var tenureLabel: UILabel!
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userImage.layer.borderColor = UIColor.white.cgColor
        userImage.layer.borderWidth = 3
        
        userImage.layer.borderWidth = 1
        userImage.layer.masksToBounds = false
        userImage.layer.borderColor = UIColor.black.cgColor
        userImage.layer.cornerRadius = userImage.frame.height/2
        userImage.clipsToBounds = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "ProjectCell") as! TableViewCell

        cell.textLabel?.text = projects[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    
}


