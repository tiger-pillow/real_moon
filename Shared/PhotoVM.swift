//
//  PhotoVM.swift
//  real_moon
//
//  Created by Gladys on 6/10/22.
//

import SwiftUI
import RealmSwift
import Combine

class PhotoVM: ObservableObject {
    static let photo_names = ["lapush", "lapush"]
    var realm: Realm?
    
    @Published var photoObjects: Results<PhotoObjectRealm>?
    
    
    init() {
        let realm = try? Realm()
        self.realm = realm
        
        //if realm?.objects(PhotoObjectRealm.self).count == 0 {
            try? realm?.write({ // need add a CATCH here some time
                for name in PhotoVM.photo_names {
                    let temp_ojbect = PhotoObjectRealm()
                    temp_ojbect.photoName = name
                    temp_ojbect.id = ObjectId.generate()
                    realm?.add(
                        temp_ojbect
                    )
                }
            })
//        } else {
//            let temp = realm?.objects(PhotoObjectRealm.self)
//            self.photoObjects = temp!
//        }
            
        
        
    }
    
}
