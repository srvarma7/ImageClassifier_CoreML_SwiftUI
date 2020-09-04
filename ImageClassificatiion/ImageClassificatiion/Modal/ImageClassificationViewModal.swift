//
//  ImageClassificationViewModal.swift
//  ImageClassificatiion
//
//  Created by Sai Raghu Varma Kallepalli on 4/9/20.
//

import Foundation
import Combine

class ImageClassificationViewModal: ObservableObject {
    
    var imageName: String = ""
    @Published var detectedName: String = ""
    
    var imgDetectionMgr: ImageDetectionManager
    
    init(imgDetMgr: ImageDetectionManager) {
        self.imgDetectionMgr = imgDetMgr
    }
    
    func classifyImage(name: String) {
        
    }
    
}
