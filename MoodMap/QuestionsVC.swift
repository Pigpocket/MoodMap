//
//  QuestionVC.swift
//  MoodMap
//
//  Created by Tomas Sidenfaden on 3/7/18.
//  Copyright © 2018 Tomas Sidenfaden. All rights reserved.
//

import Foundation
import UIKit

class QuestionsVC: UIViewController {
    
    // MARK: Properties
    
    let categories: [String] = ["Communication", "Management", "Schedule", "Resources", "Productivity"]
    let questions: [String] = ["I feel like the team is communicating effectively. I know what is expected of me and what to expect of others. When problems arise we work together to find solutions", "This project is being managed effectively. The project manager or team lead understands how to manage team members, resources, processes and deadlines", "Our team is able to achieve deadlines and complete tasks as expected", "We have the resources and people necessary to complete this project", "I am able to be productive. My time is used efficiently and effectively"]
    
    var selectedIndex = 0
    
    // MARK: Outlets
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var forwardButton: UIButton!
    
    // MARK: Actions
    
    @IBAction func previousQuestion(_ sender: Any) {
        
        if selectedIndex != 0 {
            selectedIndex -= 1
        } else {
            selectedIndex = 4
        }
        
        questionLabel.text = questions[selectedIndex]
        categoryLabel.text = categories[selectedIndex]
        
    }
    
    @IBAction func slideAction(_ sender: Any) {
        
        
    }
    @IBAction func nextQuestion(_ sender: Any) {
        
        if selectedIndex != 4 {
            selectedIndex += 1
        } else {
            selectedIndex = 0
        }

        questionLabel.text = questions[selectedIndex]
        categoryLabel.text = categories[selectedIndex]
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Slider actions for UIControlEvents
        slider.addTarget(self, action: #selector(self.sliderDidEndSliding(notification:)), for: ([.touchUpInside,.touchUpOutside]))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        
        questionLabel.text = questions[0]

    }
    
    @objc func sliderDidEndSliding(notification: NSNotification) {
        
        let percentValue = slider.value as NSNumber
        print(slider.value)
        Rating.shared.communication = slider.value
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .percent
    
        percentLabel.text = numberFormatter.string(from: percentValue)
        
        print("Communication rating = \(Rating.shared.communication)")
    }

}

extension Double {
    func roundTo(decimalPlaces: Int) -> String {
        return NSString(format: "%.\(decimalPlaces)f" as NSString, self) as String
    }
}
