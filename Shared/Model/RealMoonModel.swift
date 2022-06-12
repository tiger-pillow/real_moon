//
//  Model.swift
//  real_moon
//
//  Created by Gladys on 6/9/22.
//

import Foundation
import SwiftUI

struct RealMoonModel {
    private (set) var PhotoCardArray: [PhotoCard]
    
    init(array_of_names: [String]){
        PhotoCardArray = []
        for index in array_of_names.indices {
            PhotoCardArray.append(PhotoCard(id: index, photo_name: array_of_names[index]))
        }
    }
    
    struct PhotoCard: Identifiable {
        var id: Int
        var isSeen: Bool = true
        var photo_name: String
    }

    
}

