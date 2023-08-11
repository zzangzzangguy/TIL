//
//  MemoList.swift
//  RealmMemo
//
//  Created by 김기현 on 2023/08/02.
//

import Foundation
import RealmSwift

class MemoList: Object {
    @Persisted var title: String
    @Persisted var subTitle: String
    @Persisted var date = Date()
    @Persisted var fix: Bool
    
    @Persisted(primaryKey: true) var _id: ObjectId
    
    convenience init(title: String, subTitle: String, date: Date) {
        self.init()
        self.title = title
        self.subTitle = subTitle
        self.date = date
        self.fix = false
    }
}
