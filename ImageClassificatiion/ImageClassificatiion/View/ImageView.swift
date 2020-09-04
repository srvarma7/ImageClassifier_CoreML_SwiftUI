//
//  ImageView.swift
//  ImageClassificatiion
//
//  Created by Sai Raghu Varma Kallepalli on 4/9/20.
//

import SwiftUI

struct ImageView: View {
    
    let image: String
    @Binding var selectedImage: String
    
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .padding()
            .onTapGesture(count: 1, perform: {
                self.selectedImage = image
            })
            .border(Color.black, width: self.selectedImage == image ? 5 : 0)
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: "dog", selectedImage: .constant("dog"))
    }
}
