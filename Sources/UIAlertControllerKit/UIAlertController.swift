// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public extension UIAlertController {
    @inlinable
    @inline(__always)
    static func buildAlert(title: String?, message: String?) -> UIAlertController {
        UIAlertController(title: title, message: message, preferredStyle: .alert)
    }
    
    @inlinable
    @inline(__always)
    @discardableResult
    func addAction(
        title: String?,
        style: UIAlertAction.Style = .default,
        isPreferred: Bool = false,
        handler: ((_ action: UIAlertAction) -> Void)? = nil) -> UIAlertAction
    {
        let action = UIAlertAction(title: title, style: style, handler: handler)
        self.addAction(action)
        if isPreferred {
            self.preferredAction = action
        }
        
        return action
    }
    
    @inlinable
    @inline(__always)
    @discardableResult
    func addTextField(placeholder: String?) -> UITextField {
        var textField: UITextField!
        self.addTextField { _textField in
            textField = _textField
            textField.placeholder = placeholder
        }
        
        return textField
    }
    
    
}
