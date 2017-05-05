//
//  Video.swift
//  Youtube Playlist
//
//  Created by MRisser1 on 4/12/17.
//  Copyright © 2017 MRisser1. All rights reserved.
//

import UIKit

class Video: NSObject {
    
    var title = String()
    var url = String()
    
    convenience init(title: String, url: String) {
        self.init()
        self.title = title
        self.url = url
    }
}
