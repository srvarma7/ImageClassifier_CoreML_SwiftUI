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
    @ObservedObject private var ImgClassificationVM: ImageClassificationViewModal
    private var imageDetMgr: ImageDetectionManager
    
    init() {
        imageDetMgr = ImageDetectionManager()
        ImgClassificationVM = ImageClassificationViewModal(imgDetMgr: imageDetMgr)
    }
    
    var body: some View {
        NavigationView {
            VStack {
                ImagesScrollView(images: images, selectedImage: $seletedImage)
                
                Button("Detect", action: {
                    if seletedImage != "" {
                        ImgClassificationVM.detectImage(name: seletedImage)
                    }
                })
                .padding(10)
                .foregroundColor(.white)
                .background(Color.green)
                .cornerRadius(10)
                
                Text(ImgClassificationVM.detectedName == "" ? "Classification is displayed here: Select an image and press Detect" : "\(ImgClassificationVM.detectedName)")
                    .padding()
                    .lineLimit(nil)
                    .font(ImgClassificationVM.detectedName == "" ? .body : .title)
                    .foregroundColor(ImgClassificationVM.detectedName == "" ? Color.gray : .blue)
                    .multilineTextAlignment(.center)
                
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
