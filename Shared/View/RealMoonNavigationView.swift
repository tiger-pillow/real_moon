//
//  NavigationView.swift
//  real_moon
//
//  Created by Gladys on 6/10/22.
//

import SwiftUI

struct RealMoonNavigationView: View {
    @ObservedObject var viewModel: PhotoVM
    @State private var name_temp: String = "Temp field"
    var body: some View {
        NavigationView{
            VStack{
                ScrollCards(array_of_cards: viewModel.cards)
                HStack{
                    TextField("Enter photo name", text: $name_temp).textFieldStyle(.roundedBorder)
                    Button{}label: {
                        Text("Submit")
                    }
                }
        
                HStack{
                    save_photo_button
                    Spacer()
                    import_photo_button
                }
            }.navigationTitle("Album").padding()
        }
        
        
///
    }
}

struct ScrollCards: View {
    let array_of_cards: Array<RealMoonModel.PhotoCard>
    
    var body: some View { ScrollView {
        LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]){
            ForEach(array_of_cards){card in
                NavigationLink(destination: EditImageView(card: card)){
                    PictureCard(card: card)
                }
            }
        }
    }
    }
}

struct PictureCard: View {
    let card: RealMoonModel.PhotoCard
    var body: some View{
            Image(card.photo_name)
                .resizable()
                .scaledToFit()
                    
    }
}

struct  RMNVConstants {
    static let width: CGFloat = 100
    static let height: CGFloat = 200
}


var save_photo_button: some View{
    Button{} label: {
        VStack{
            Image(systemName: "square.and.arrow.down").font(.largeTitle)
            Text("Save to album")
        }
    }
}

var import_photo_button: some View{
    Button{} label: { VStack{
        Image(systemName: "plus.circle").font(.largeTitle)
        Text("Import photo")
    }}.onTapGesture {
        print("tapping the button")
    }
    
}




struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        let realmoon = PhotoVM()
        RealMoonNavigationView(viewModel: realmoon)
    }
}
