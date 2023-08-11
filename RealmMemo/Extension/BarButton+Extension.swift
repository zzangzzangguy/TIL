//
//  BarButton+Extension.swift
//  RealmMemo
//
//  Created by 김기현 on 2023/08/02.
//
import UIKit

class BarButton {
    
    static func hideBarButton(_ share: UIBarButtonItem, _ done: UIBarButtonItem) {
        share.isEnabled = false
        share.tintColor = UIColor.clear
        
        done.isEnabled = false
        done.tintColor = UIColor.clear
    }
    
    static func showBarButton(_ share: UIBarButtonItem, _ done: UIBarButtonItem) {
        share.isEnabled = true
        share.tintColor = UIColor.systemOrange
        
        done.isEnabled = true
        done.tintColor = UIColor.systemOrange
    }
}
