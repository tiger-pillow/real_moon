//
//  PhotoObjectRealm.swift
//  real_moon
//
//  Created by Gladys on 6/18/22.
//

import Foundation
import RealmSwift

final class PhotoObjectRealm: Object, ObjectKeyIdentifiable{
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var photoName: String
    
    convenience init(photoName: String) {
        self.init()
        self.id = ObjectId()
        self.photoName = photoName

        }
} 
 
