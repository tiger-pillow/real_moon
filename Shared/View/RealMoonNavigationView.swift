//
//  NavigationView.swift
//  real_moon
//
//  Created by Gladys on 6/10/22.
//

import SwiftUI
import RealmSwift

struct RealMoonNavigationView: View {
    
    @StateObject var viewModel = PhotoVM()
    
    
    // local states
    @State private var isSelectingPhotos: Bool = false
    @State private var selectedPhoto: UIImage = UIImage(imageLiteralResourceName: "verbier")
    
    
    /// experimenting using Realm
    
    
    var body: some View {
        NavigationView{
            VStack{
                ScrollCards(array_of_cards: viewModel.photoObjects!)
                Text(viewModel.photoObjects![0].photoName)
//                Image(uiImage: selectedPhoto).resizable().frame(width: 300, height: 300)
            }.navigationTitle("Album").padding()
                .toolbar{
                    ToolbarItemGroup(placement: .navigationBarTrailing){
                        save_photo_button
                        import_photo_button(isSelectingPhotos: $isSelectingPhotos)}
                    
                }
            }.sheet(isPresented: $isSelectingPhotos){
                selectPhotoFromAlbumView(selectedPhoto: $selectedPhoto)
        }
        
    }
}

struct ScrollCards: View {
    let array_of_cards: Results<PhotoObjectRealm>
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]){
                ForEach(array_of_cards){ card in
                        VStack{
                        NavigationLink(destination: EditImageView(card: card)){
                            PictureCard(card: card)
                        }
                    }
                }
            }
        }
    }
}

struct PictureCard: View {
    let card: PhotoObjectRealm
    var body: some View{
        VStack{
        Image(card.photoName)
            .resizable()
            .clipped()
            .aspectRatio(1, contentMode: .fill)
        Spacer()
        }
        
    }
}

struct RMNVConstants {
    static let width: CGFloat = 100
    static let height: CGFloat = 200
}


struct import_photo_button: View {
    @Binding var isSelectingPhotos: Bool
    var body: some View{
    Button{
        isSelectingPhotos = true
    } label: {
        Image(systemName: "plus.circle").font(.body)
        }
    }
    
}

var save_photo_button: some View{
    Button{} label: {
        Image(systemName: "square.and.arrow.down").font(.body)

    }
}


struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            RealMoonNavigationView()
                .previewInterfaceOrientation(.portrait)
            RealMoonNavigationView()
                .previewInterfaceOrientation(.portrait)
        }
    }
}

