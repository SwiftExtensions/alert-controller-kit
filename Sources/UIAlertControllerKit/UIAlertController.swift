// The Swift Programming Language
// https://docs.swift.org/swift-book

import UIKit

public extension UIAlertController {
    static func buildAlert(title: String?, message: String?) -> UIAlertController {
        UIAlertController(title: title, message: message, preferredStyle: .alert)
    }
    
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
    
    
}
