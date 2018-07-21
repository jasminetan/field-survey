//
//  FieldSurveyJSONLoader.swift
//  field-survey
//
//  Created by Jasmine Tan on 7/17/18.
//  Copyright © 2018 Jasmine Tan. All rights reserved.
//

import Foundation

class FieldSurveyJSONLoader {
    class func load(fileName: String) -> [FieldSurvey] {
        var classification = [FieldSurvey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
           let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            classification = FieldSurveyJSONParser.parse(data)
        }
        return classification
    }
}



