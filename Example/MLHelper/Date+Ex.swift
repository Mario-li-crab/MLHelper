//
//  Date+Ex.swift
//  MLHelper_Example
//
//  Created by Mario on 2020/8/31.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation



public let AllComponent: Set<Calendar.Component> = [
    .era,
    .year,
    .month,
    .day,
    .hour,
    .minute,
    .second,
    .weekday,
    .weekdayOrdinal,
    .quarter,
    .weekOfMonth,
    .weekOfYear,
    .yearForWeekOfYear,
    .nanosecond,
    .calendar,
    .timeZone
]

public let datetimeComponent: Set<Calendar.Component> = [
    .year, .month, .day, .hour, .minute, .second
]

public let dateComponent: Set<Calendar.Component> = [.year, .month, .day]

public let timeComponent: Set<Calendar.Component> = [.hour, .minute, .second, .nanosecond]


public extension Date {
    static func +( date: inout Date, timeInterVal: Int) {
        
    }
}


public extension Date {
    
    /// date adding years months days hours minutes seconds
    /// - Parameters:
    ///   - y: year default 0,
    ///   - mh: month default 0
    ///   - d: day default 0
    ///   - h: hour default 0
    ///   - me: minute default 0
    ///   - s: second default 0
    /// - Returns: Date
    func adding(years y: Int = 0, months mh: Int = 0, days d: Int = 0, hours h: Int = 0, minutes me: Int = 0, seconds s: Int = 0) -> Date {
        let calendar = Calendar.current
        var date = self
        if y != 0 {
            date = calendar.date(byAdding: .year, value: y, to: date) ?? date
        }
        if mh != 0 {
            date = calendar.date(byAdding: .month, value: mh, to: date) ?? date
        }
        
        if d != 0 {
            date = calendar.date(byAdding: .day, value: d, to: date) ?? date
        }
        if h != 0 {
            date = calendar.date(byAdding: .hour, value: h, to: date) ?? date
        }
        
        if me != 0 {
            date = calendar.date(byAdding: .minute, value: me, to: date) ?? date
        }
        
        if s != 0 {
            date = calendar.date(byAdding: .second, value: s, to: date) ?? date
        }
        
        return date
    }
    
    /// add years
    /// - Parameter years: added years
    /// - Returns: Date by adding years
    func addYears(_ years: Int) -> Date {
        self.adding(years: years)
    }
    
    /// adding months
    /// - Parameter months: added month
    /// - Returns: Date by adding months
    func addMonths(_ months: Int) -> Date {
        self.adding(months: months)
    }
    
    /// adding days
    /// - Parameter days: added days
    /// - Returns: Date by adding days
    func addDays(_ days: Int) -> Date {
        adding(days: days)
    }
    
    /// adding hours
    /// - Parameter hours: added hours
    /// - Returns: Date by adding hours
    func addHours(_ hours: Int) -> Date {
        adding(hours: hours)
    }
    
    /// adding minutes
    /// - Parameter minutes: added minutes
    /// - Returns: Date by adding minutes
    func addMinutes(_ minutes: Int) -> Date {
        adding(minutes: minutes)
    }
    
    /// adding seconds
    /// - Parameter seconds: added seconds
    /// - Returns: Date by adding seconds
    func addSeconds(_ seconds: Int) -> Date {
        adding(seconds: seconds)
    }
    
    
    /// 获取日期当前所有部分
    /// - Parameter components: 获取部分 默认 全部获取
    /// - Returns:
    func getComponents(_ components: Set<Calendar.Component> = AllComponent) -> DateComponents {
        Calendar.current.dateComponents(components, from: self)
    }
    
    
    /// 获取日期部分
    /// - Returns: （年，月，日）
    func dateCompoent() -> (year: Int, month: Int, day: Int) {
        let c = getComponents([.year, .month, .day])
        return (c.year!, c.month!, c.day!)
    }
    
    /// 获取时间部分
    /// - Returns: (时，分，秒，毫秒）
    func timeComponent() -> (hour: Int, minute: Int, second: Int, nano: Int) {
        let c = getComponents([.hour, .minute, .second, .nanosecond])
        return (c.hour!, c.minute!, c.second!, c.nanosecond!)
    }
    
    
    /// 获取某一个值
    /// - Parameter component: 获取值的部分
    /// - Returns: 获取制定值的结果
    func getComponent(component: Calendar.Component) -> Int {
        Calendar.current.component(component, from: self)
    }
    
    
}

public extension Date {
    var year: Int {
        get {
            getComponent(component: .year)
        }
    }
    
    var month: Int {
        get {
            getComponent(component: .month)
        }
    }
    
    var day: Int {
        get {
            getComponent(component: .day)
        }
    }
    
    var hour: Int {
        get {
            getComponent(component: .hour)
        }
    }
    
    var minute: Int {
        get {
            getComponent(component: .minute)
        }
    }
    
    var second: Int {
        get {
            getComponent(component: .second)
        }
    }
    
    var weekday: Int {
        get {
            getComponent(component: .weekday)
        }
    }
    
    var weekOfMonth: Int {
        get {
            getComponent(component: .weekOfMonth)
        }
    }
    
    var weekOfYear: Int {
        get {
            getComponent(component: .weekOfYear)
        }
    }
    
    var weekdayOrdinal: Int {
        get {
            getComponent(component: .weekdayOrdinal)
        }
    }
    
    var yearForWeekOfYear: Int {
        get {
            getComponent(component: .yearForWeekOfYear)
        }
    }
    
    
}


public extension NSDate {
    
    /// date adding years months days hours minutes seconds
    /// - Parameters:
    ///   - y: year default 0
    ///   - mh: month default 0
    ///   - d: day default 0
    ///   - h: hour default 0
    ///   - me: minute default 0
    ///   - s: second default 0
    /// - Returns: Date
    func adding(years y: Int = 0, months mh: Int = 0, days d: Int = 0, hours h: Int = 0, minutes me: Int = 0, seconds s: Int = 0) -> NSDate {
        return (self as Date).adding(years: y, months: mh, days: d, hours: h, minutes: me, seconds: s) as NSDate
    }
}
