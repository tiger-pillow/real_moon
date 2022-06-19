////
////  Model.swift
////  real_moon
////
////  Created by Gladys on 6/9/22.
////
//
//import Foundation
//import SwiftUI
//import RealmSwift
//
//struct RealMoonModel {
//    private (set) var PhotoCardArray: [PhotoCard]
//
//    init(array_of_names: [String]){
//        PhotoCardArray = []
//        for index in array_of_names.indices {
//            PhotoCardArray.append(PhotoCard(id: index, photoName: array_of_names[index]))
//        }
//    }
//
//    struct PhotoCard: Identifiable {
//        var id: Int
//        var isSeen: Bool = true
//        var photoName: String
//
//    }
//
//
//}
//
