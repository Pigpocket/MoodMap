//
//  ResultsViewController.swift
//  MoodMap
//
//  Created by Tomas Sidenfaden on 3/7/18.
//  Copyright © 2018 Tomas Sidenfaden. All rights reserved.
//

import Foundation
import UIKit

@objc class ResultsViewController: UITableViewController {
    
    let categories: [String] = ["Communication", "Management", "Schedule", "Resources", "Productivity"]
    var selectedIndex = IndexPath()
    
    // MARK: Outlets
    
    @IBOutlet weak var projectNameLabel: UILabel!
    @IBOutlet weak var projectPercentLabel: UILabel!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var submitView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .percent
        
        let labelText = ((Rating.shared.communication + Rating.shared.management + Rating.shared.productivity + Rating.shared.resources + Rating.shared.schedule) / 5) as NSNumber
        
        projectPercentLabel.text = numberFormatter.string(from: labelText)
        projectNameLabel.text = "Wireframe UX for mobile"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    @IBAction func submitAction(_ sender: Any) {
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultsCell")!
        
        
        cell.textLabel?.text = categories[indexPath.row]
        cell.textLabel?.textColor = UIColor.black
        
        cell.detailTextLabel?.textColor = UIColor.black
        
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .percent
        
        //percentLabel.text = numberFormatter.string(from: percentValue)
        
        switch (0, indexPath.row) {
        case (0,0):
            cell.detailTextLabel?.text = numberFormatter.string(from: Rating.shared.communication as NSNumber)
        case (0,1):
            cell.detailTextLabel?.text = numberFormatter.string(from: Rating.shared.productivity as NSNumber)
        case (0,2):
            cell.detailTextLabel?.text = numberFormatter.string(from: Rating.shared.management as NSNumber)
        case (0,3):
            cell.detailTextLabel?.text = numberFormatter.string(from: Rating.shared.resources as NSNumber)
        case (0,4):
            cell.detailTextLabel?.text = numberFormatter.string(from: Rating.shared.schedule as NSNumber)
        default:
            break
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
}

