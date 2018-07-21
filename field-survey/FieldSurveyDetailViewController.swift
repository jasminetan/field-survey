//
//  FieldSurveyDetailViewController.swift
//  field-survey
//
//  Created by Jasmine Tan on 7/17/18.
//  Copyright © 2018 Jasmine Tan. All rights reserved.
//

import UIKit

class FieldSurveyDetailViewController: UIViewController {
    var fieldSurvey: FieldSurvey?
    var dateFormatter: DateFormatter?
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageIconView: UIImageView!
    @IBOutlet weak var descriptionView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Observation"
        imageIconView.image = fieldSurvey?.classification.image
        titleLabel.text = fieldSurvey?.title
        descriptionView.text = fieldSurvey?.description
        dateFormatter?.dateStyle = .medium
        dateFormatter?.timeStyle = .medium
        if let date = fieldSurvey?.date {
            dateLabel.text = dateFormatter?.string(from: date)
        }else{
            dateLabel.text = ""
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
