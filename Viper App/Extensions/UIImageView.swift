//
//  UIImageView.swift
//  Viper App
//
//  Created by Rino Armadiaz on 04/10/20.
//
import UIKit

extension UIImageView {
    func imageFromServerURL(_ urlString: String) {
//        if self.image == nil {
//            self.image = PlaceHolderImage
//        }
        URLSession.shared.dataTask(with: NSURL(string: urlString)! as URL, completionHandler: { (data, response, error) -> Void in
                if error != nil {
                    print(error ?? "")
                    return
                }
                DispatchQueue.main.async(execute: { () -> Void in
                    let image = UIImage(data: data!)
                    self.image = image
                })

            }).resume()
    }
}
