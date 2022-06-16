//
//  ContentView.swift
//  Shared
//
//  Created by Gladys on 6/9/22.
//

import SwiftUI

struct EditImageView: View {
    var card: RealMoonModel.PhotoCard
    var body: some View {

        VStack{
            HStack{
                Image(card.photo_name).resizable().scaledToFit()
            }.navigationTitle("Edit")
            Spacer()
           
        }.padding(.all)
        
    }

}


struct EditImageView_Previews: PreviewProvider {
    static var previews: some View {
        let realmoon = PhotoVM()
        EditImageView(card: realmoon.cards[0])
    }
}
