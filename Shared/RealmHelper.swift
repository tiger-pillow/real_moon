////
////  RealmHelper.swift
////  real_moon
////
////  Created by Gladys on 6/19/22.
////
//
//import Foundation
//import RealmSwift
//
//class RealmHelper {
//
//    static let photo_names = ["verbier", "moontest", "verbier", "moontest", "lapush", "verbier", "lapush", "moontest"]
//
//    static func inMemoryRealm() -> Realm {
//        var conf = Realm.Configuration.defaultConfiguration
//        conf.inMemoryIdentifier = "preview"
//        let realm = try! Realm(configuration: conf)
//        return realm
//    }
//
//    static func realmWithPhotoNames() -> Realm {
//        let realm = inMemoryRealm()
//
//        let allItems = realm.objects(PhotoObjectRealm.self)
//
//        if allItems.count == 0 {
//            try? realm.write({ // need add a CATCH here some time later
//                for name in photo_names {
//                    let temp_ojbect = PhotoObjectRealm()
//                    temp_ojbect.photoName = name
//                    realm.add(
//                        temp_ojbect
//                    )
//                }
//            })
//        }
//
//        return realm
//    }
//
//
//}
//
