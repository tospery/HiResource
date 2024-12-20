//
//  UIImage+Frame.swift
//  HiSwiftUI
//
//  Created by 杨建祥 on 2022/7/19.
//

import UIKit

class CurrentView: UIView { }

public extension UIImage {
    
    fileprivate class func image(name: String) -> UIImage {
        var image = UIImage(named: name, in: Bundle.main, compatibleWith: nil)
        if image == nil {
            var bundle = Bundle(for: CurrentView.self)
            if let path = bundle.path(forResource: "Resources", ofType: "bundle") {
                bundle = Bundle(path: path)!
            }
            image = UIImage(named: name, in: bundle, compatibleWith: nil)
            if image == nil {
                if let path = bundle.path(forResource: "\(name)@2x", ofType: "png") {
                    image = .init(contentsOfFile: path)
                }
            }
        }
        return image!
    }
    
    static var back: UIImage {
        return self.image(name: "ic_back")
    }
    
    static var close: UIImage {
        return self.image(name: "ic_close")
    }
    
    static var indicator: UIImage {
        return self.image(name: "ic_indicator")
    }
    
    static var checked: UIImage {
        return self.image(name: "ic_checked")
    }
    
    static var loading: UIImage {
        return self.image(name: "ic_loading")
    }
    
    static var waiting: UIImage {
        return self.image(name: "ic_waiting")
    }
    
    static var networkError: UIImage {
        return self.image(name: "ic_error_network")
    }
    
    static var serverError: UIImage {
        return self.image(name: "ic_error_server")
    }
    
    static var emptyError: UIImage {
        return self.image(name: "ic_error_empty")
    }
    
    static var userNotLoginedInError: UIImage {
        return self.image(name: "ic_error_user_unlogin")
    }
    
    static var userLoginExpiredError: UIImage {
        return self.image(name: "ic_error_user_expired")
    }
    
}
