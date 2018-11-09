//
//  UIViewDesignable.swift
//  Demo
//
//  Created by Nasib Ali Ansari on 9/11/18.
//  Copyright © 2018 Nasib Ali Ansari. All rights reserved.
//
import UIKit

@IBDesignable
open class DesignableView: UIView {}

@IBDesignable
open class DesignableButton: UIButton{}

@IBDesignable
open class DesignableLabel: UILabel{}

@IBDesignable
open class DesignableTextField: UITextField {}

@IBDesignable
extension UIView : DesignableProtocol{
    
   @IBInspectable
    var cornerRadious: CGFloat {
        get{
            return self.layer.cornerRadius
        }
        set{
            self.layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    var border: CGFloat {
        get{
            return self.layer.borderWidth
        }
        set{
            self.layer.borderWidth = newValue
        }
    }
    
    @IBInspectable
    var borderColor: UIColor? {
        get{
            guard let color = self.layer.borderColor else {
                return nil
            }
            return UIColor(cgColor: color)
        }
        set{
            guard let color = newValue else { return }
            self.layer.borderColor = color.cgColor
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor? {
        get{
            guard let color = self.layer.shadowColor else {
                return nil
            }
            return UIColor(cgColor: color)
        }
        set{
            guard let color = newValue else {
                return
            }
            self.layer.shadowColor = color.cgColor
        }
    }

    @IBInspectable
    var shadowOpacity: Float {
        get{
            return self.layer.shadowOpacity
        }
        set{
            self.layer.shadowOpacity = newValue
        }
    }

    @IBInspectable
    var shadowOffset: CGSize {
        get{
            return self.layer.shadowOffset
        }
        set{
            self.layer.shadowOffset = newValue
        }
    }
}
