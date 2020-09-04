//
//  UIImage+Extenstion.swift
//  ImageClassificatiion
//
//  Created by Sai Raghu Varma Kallepalli on 4/9/20.
//

import Foundation
import UIKit
import VideoToolbox

extension UIImage {
    
    func resizeImageTo(to: CGSize) -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: to.width, height: to.height)
        UIGraphicsBeginImageContextWithOptions(to, false, 1)
        self.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!    // ?? UIImage()
    }
    
}
