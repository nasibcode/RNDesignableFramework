//
//  DesignableProtocol.swift
//  Demo
//
//  Created by Nasib Ali Ansari on 10/23/18.
//  Copyright © 2018 Nasib Ali Ansari. All rights reserved.
//

import UIKit

protocol DesignableProtocol {
    var cornerRadious: CGFloat {get set}
    var border: CGFloat {get set}
    var borderColor: UIColor? {get set}
    var shadowColor: UIColor? {get set}
    var shadowOpacity: Float {get set}
    var shadowOffset: CGSize {get set}
}

extension DesignableProtocol where Self: UIView {
    
    
    var cornerRadious: CGFloat {
        get{
            return 1
        }
        set{
            self.layer.cornerRadius = 0
        }
    }
    var border: CGFloat {
        get{
            return 0
        }
        set{
            self.layer.borderWidth = 0
        }
    }
    var shadowOpacity: Float {
        get{
            return 0
        }
        set{
            self.layer.shadowOpacity = 0
        }
    }
    var shadowOffset: CGSize {
        get{
            return CGSize.zero
        }
        set{
            self.layer.shadowOffset = CGSize.zero
        }
    }
}
