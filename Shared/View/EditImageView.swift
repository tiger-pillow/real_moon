//
//  ContentView.swift
//  Shared
//
//  Created by Gladys on 6/9/22.
//

import SwiftUI
import RealmSwift

struct EditImageView: View {
    var card: PhotoObjectRealm
    var body: some View {

        VStack{
            HStack{
                Image(card.photoName).resizable().scaledToFit()
            }.navigationTitle("Edit")
            Spacer()
           
        }.padding(.all)
        
    }

}


struct EditImageView_Previews: PreviewProvider {
    static let temp = PhotoObjectRealm(photoName: "verbier");

    static var previews: some View {
        EditImageView(card: temp)
    }
}
