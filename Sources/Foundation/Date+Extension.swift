//
//  Date+Extension.swift
//  SwiftTool
//
//  Created by galaxy on 2021/5/14.
//  Copyright © 2021 yinhe. All rights reserved.
//

import Foundation


extension Date {
    /// 是否是今天
    public var gl_isToday: Bool {
        let calendar = Calendar(identifier: Calendar.current.identifier)
        let cmps: Set<Calendar.Component> = [.year, .month, .day]
        let current = calendar.dateComponents(cmps, from: self)
        let now = calendar.dateComponents(cmps, from: Date())
        return current.year == now.year && current.month == now.month && current.day == now.day
    }
}