//
//  MemoTableViewCell.swift
//  RealmMemo
//
//  Created by 김기현 on 2023/08/02.
//

import UIKit

class MemoTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    
    static let identifier = "MemoTableViewCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    // MARK: - Lifecycle

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
