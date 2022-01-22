//
//  UIImageView.swift
//  COVID-19Assignment
//
//  Created by khalil on 22/1/2022.
//

import Foundation
import Kingfisher
import UIKit
extension UIImageView {

    func downloadImage(urlString: String, placeHolder: UIImage = UIImage(named: "placeHolder") ?? UIImage()) {
        let url = URL(string: "\(urlString)")
        let size = CGSize(width: bounds.size.width, height: bounds.size.height)
        let processor = DownsamplingImageProcessor(size: size)
        kf.indicatorType = .activity

        kf.setImage(
            with: url,
            placeholder: placeHolder,
            options: [
                .processor(processor),
                .scaleFactor(UIScreen.main.scale),
                .transition(.fade(1)),
                .cacheOriginalImage,
            ]
        ) {
            value in
            switch value {
            case .success:
                break
            case .failure:
                break
            }
        }
    }
   

}
