//
//  PopUpService+Extension.swift
//  RealmMemo
//
//  Created by 김기현 on 2023/08/02.
//

import UIKit

class PopUpService {
    
    func popup() -> PopUpViewController {
        let sb = UIStoryboard(name: "PopUp", bundle: .main)
        let popupVC = sb.instantiateViewController(withIdentifier: "PopUpViewController") as! PopUpViewController
        return popupVC
    }
}
