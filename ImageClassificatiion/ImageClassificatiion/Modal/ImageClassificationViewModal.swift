//
//  ImageClassificationViewModal.swift
//  ImageClassificatiion
//
//  Created by Sai Raghu Varma Kallepalli on 4/9/20.
//

import Foundation
import Combine
import UIKit

class ImageClassificationViewModal: ObservableObject {
    
    var imageName: String = ""
    @Published var detectedName: String = ""
    
    var imgDetectionMgr: ImageDetectionManager
    
    init(imgDetMgr: ImageDetectionManager) {
        self.imgDetectionMgr = imgDetMgr
    }
    
    func detectImage(name: String) {
        
        let sourceImage = UIImage(named: name)
        
        guard let resizedImage = sourceImage?.resizeImageTo(to: CGSize(width: 224, height: 224)) else { fatalError("Error while resizing the image") }
        
        if let output = imgDetectionMgr.classifyImage(img: resizedImage) {
            detectedName = output
        }
    }
    
}
