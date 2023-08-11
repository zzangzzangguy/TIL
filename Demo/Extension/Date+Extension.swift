//
//  Date+Extension.swift
//  RealmMemo
//
//  Created by 김기현 on 2023/08/02.
//

import Foundation

extension DateFormatter {
    static var totalFormatter: DateFormatter {
        let format = DateFormatter()
        format.dateStyle = .medium
        format.timeStyle = .short
        format.locale = Locale(identifier: "Ko_kr")
        return format
    }
    
    static var weekendFormatter: DateFormatter {
        let format = DateFormatter()
        format.dateFormat = "EEEE"
        format.locale = Locale(identifier: "Ko_kr")
        return format
    }
    
    static var todayFormatter: DateFormatter {
        let format = DateFormatter()
        format.dateFormat = "a hh:mm"
        format.locale = Locale(identifier: "Ko_kr")
        return format
    }
    
    static var comparisonFormatter: DateFormatter {
        let format = DateFormatter()
        format.dateFormat = "yyyyMMdd"
        format.locale = Locale(identifier: "Ko_kr")
        return format
    }
}
