//
//  selectPhotoFromAlbum.swift
//  real_moon
//
//  Created by Gladys on 6/18/22.
//

import SwiftUI

struct selectPhotoFromAlbumView: UIViewControllerRepresentable {
    @Binding var selectedPhoto: UIImage
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.allowsEditing = true
        return picker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
         
    }
    
    typealias UIViewControllerType = UIImagePickerController
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(photoPicker: self)
    }
    
    
    final class Coordinator: NSObject,UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let photoPicker: selectPhotoFromAlbumView
        
        init(photoPicker: selectPhotoFromAlbumView){
            self.photoPicker = photoPicker
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.editedImage] as? UIImage {
                photoPicker.selectedPhoto = image
            } else { // need to deal with an error message
                
            }
            picker.dismiss(animated: true)
            
                
        }
    }
    
}

