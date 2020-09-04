//
//  ImageDetectionManager.swift
//  ImageClassificatiion
//
//  Created by Sai Raghu Varma Kallepalli on 4/9/20.
//

import Foundation
import CoreML
import UIKit

class ImageDetectionManager {
    
    /*
     Resnet50.mlmodel is not uploaded to the Repo
     Please go to https://developer.apple.com/machine-learning/models/ and download the mlmodel
     */
    
    let model: Resnet50
    
    init() {
        model = Resnet50()
    }
    
    func classifyImage(img: UIImage) -> String? {
        
        guard let pixelBuffer = img.toCVPixelBuffer(),
              let predection = try? model.prediction(image: pixelBuffer)
              else {
            return nil
        }
        
        return predection.classLabel
    }
}
