//
//  PopUpViewController.swift
//  RealmMemo
//
//  Created by 김기현 on 2023/08/02.
//

import UIKit

class PopUpViewController: UIViewController {
    
    // MARK: - Properties
    
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var okButton: UIButton!
    
    let welcomeMessage =    """
                            처음 오셨군요!
                            환영합니다 :)
                                
                            당신만의 메모를 작성하고
                            관리해보세요!
                            """
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    // MARK: - Helper
    
    func configureUI() {
        contentView.clipsToBounds = true
        contentView.layer.cornerRadius = 10
        
        okButton.clipsToBounds = true
        okButton.layer.cornerRadius = 10
        
        welcomeLabel.text = welcomeMessage
    }
    
    // MARK: - Action
    
    @IBAction func handleOkButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
