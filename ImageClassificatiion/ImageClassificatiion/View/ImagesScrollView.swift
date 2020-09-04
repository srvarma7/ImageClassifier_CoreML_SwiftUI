//
//  ImagesScrollView.swift
//  ImageClassificatiion
//
//  Created by Sai Raghu Varma Kallepalli on 4/9/20.
//

import SwiftUI

struct ImagesScrollView: View {
    
    let images: [String]
    @Binding var selectedImage: String
    
    var body: some View {
        ScrollView([.horizontal]) {
            HStack {
                ForEach(self.images, id: \.self) { image in
                    ImageView(image: image, selectedImage: $selectedImage)
                }
            }
        }.padding()
    }
}

struct ImagesScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ImagesScrollView(images: ["dog", "cat"], selectedImage: .constant("cat"))
    }
}
