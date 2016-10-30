//
//  Note.swift
//  CloudNotes
//
//  Created by Jonathan Rose on 10/27/16.
//  Copyright © 2016 Jonathan Rose. All rights reserved.
//

import Foundation

class Note{
    var createTime:Date
    
    var description:String
    
    init() {
        createTime = Date()
        description = "New note"
    }
    
}
