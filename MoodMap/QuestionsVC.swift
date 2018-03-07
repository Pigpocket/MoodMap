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
    
    let questions: [String] = ["I feel like the team is communicating effectively. I know what is expected of me and what to expect of others. When problems arise we work together to find solutions", "This project is being managed effectively. The project manager or team lead understands how to manage team members, resources, processes and deadlines", "Our team is able to achieve deadlines and complete tasks as expected", "We have the skills, experience and resources to complete project tasks on schedule", "Blah blah blah we are able to lorum ipsum dolor and lorem ipsum dolor and etc etc etc for the love of all that is good and well"]
    
    var selectedIndex = 0
    
    // MARK: Outlets
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
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
        
    }
    
    @IBAction func nextQuestion(_ sender: Any) {
        
        if selectedIndex != 4 {
            selectedIndex += 1
        } else {
            selectedIndex = 0
        }

        questionLabel.text = questions[selectedIndex]
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        
        questionLabel.text = questions[0]
    }
    
    
    
}
