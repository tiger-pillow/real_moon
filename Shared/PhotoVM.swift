//
//  PhotoVM.swift
//  real_moon
//
//  Created by Gladys on 6/10/22.
//

import SwiftUI

class PhotoVM: ObservableObject {
    static let photo_names = ["verbier", "moontest","verbier", "moontest", "lapush","lapush"]
    
    static func createRealMoonModel() -> RealMoonModel{
        RealMoonModel(array_of_names: photo_names)
    }
    
    @Published private var model = createRealMoonModel()
    
    var cards: [RealMoonModel.PhotoCard] {
        model.PhotoCardArray
    }
    
}
