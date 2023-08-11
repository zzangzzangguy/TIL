//
//  UIAlert+Extension.swift
//  RealmMemo
//
//  Created by 김기현 on 2023/08/02.
//

import UIKit

typealias Action = () -> ()

class AlertHelper {
    
    static func setAlert(title: String?, message: String?, okMessage: String, over viewController: UIViewController) {
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: okMessage, style: .default, handler: nil))
        viewController.present(ac, animated: true)
    }
    
    static func okHandlerAlert(title: String, message: String?, onConfirm: @escaping Action, over viewController: UIViewController) {
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default, handler: { (_) in
            onConfirm()
        })
        
        let noAction = UIAlertAction(title: "취소", style: .destructive, handler: nil)
        
        ac.addAction(okAction)
        ac.addAction(noAction)
        viewController.present(ac, animated: true)
    }
    
    static func okAndNoHandlerAlert(title: String, message: String?, onConfirm: @escaping Action, onCancel: @escaping Action, over viewController: UIViewController) {
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default, handler: { (_) in
            onConfirm()
        })
        
        let noAction = UIAlertAction(title: "취소", style: .destructive, handler: { (_) in
            onCancel()
        })
        
        ac.addAction(okAction)
        ac.addAction(noAction)
        viewController.present(ac, animated: true)
    }
}
