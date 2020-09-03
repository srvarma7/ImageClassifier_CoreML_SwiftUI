//
//  ContentView.swift
//  ImageClassificatiion
//
//  Created by Sai Raghu Varma Kallepalli on 4/9/20.
//

import SwiftUI

struct ContentView: View {
    
    let images = ["dog", "cat", "tree", "building"]
    @State var seletedImage = ""
    
    var body: some View {
        NavigationView {
            VStack {
                ImagesScrollView(images: images, selectedImage: $seletedImage)
                
                Button("Detect", action: {
                    
                })
                .padding(10)
                .foregroundColor(.white)
                .background(Color.green)
                .cornerRadius(10)
                
                Text("Classification is displayed here")
                    .padding()
                
                Spacer()
            }
            
            .navigationBarTitle("Image Classification", displayMode: .automatic)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
