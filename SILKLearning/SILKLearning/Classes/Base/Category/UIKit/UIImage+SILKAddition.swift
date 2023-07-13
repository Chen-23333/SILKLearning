//
//  UIImage+SILKAddition.swift
//  SILKLearning
//
//  Created by 张骞 on 2023/6/12.
//

import UIKit

extension UIImage {
   
    class func BDCDemo_imageWithColor(color: UIColor, size: CGSize) -> UIImage {
        UIGraphicsBeginImageContext(size)
        let rect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        let image: UIImage? = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return image ?? UIImage();
    }
    
}
