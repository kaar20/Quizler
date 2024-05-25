//
//  File.swift
//  Quizzler-iOS13
//
//  Created by Mohamed Abdiaziz  on 25/04/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
 var question:String
 var Answer:String
    init(q: String, a: String) {
        self.question = q
        self.Answer = a
    }
}
