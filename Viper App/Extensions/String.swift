//
//  String.swift
//  Viper App
//
//  Created by Rino Armadiaz on 04/10/20.
//

import UIKit

extension String {
    func base64ToImage() -> UIImage? {
        if  let url = URL(string: self),
            let data = try? Data(contentsOf: url),
            let image = UIImage(data: data) {
            return image
        }
        return nil
    }
}
