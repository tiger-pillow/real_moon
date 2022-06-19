//
//  PhotoVM.swift
//  real_moon
//
//  Created by Gladys on 6/10/22.
//

import SwiftUI
import RealmSwift

class PhotoVM: ObservableObject {
    static let photo_names = ["verbier", "moontest","verbier", "moontest", "lapush", "verbier", "lapush", "moontest"]

    static func createRealMoonModel() -> RealMoonModel{
        RealMoonModel(array_of_names: photo_names)
    }
    
    let localRealm = try! Realm()
    

    
    @Published private var model = createRealMoonModel()
    
    var cards: [RealMoonModel.PhotoCard] {
        model.PhotoCardArray
    }
    
}
