//
//  Bundle+Extension.swift
//  SwiftTool
//
//  Created by galaxy on 2021/5/14.
//  Copyright © 2021 yinhe. All rights reserved.
//

import Foundation

extension Bundle {
    /// 获取APP名称
    public static var gl_appName: String? {
        func getAppName(info: [String: Any]) -> String? {
            var result: String?
            if let name = info["CFBundleDisplayName"] as? String {
                result = name
            } else if let name = info["CFBundleName"] as? String {
                result = name
            } else if let name = info["CFBundleExecutable"] as? String {
                result = name
            }
            return result
        }
        if let localizedInfoDictionary = Bundle.main.localizedInfoDictionary, localizedInfoDictionary.count > 0 {
            return getAppName(info: localizedInfoDictionary)
        } else if let path = Bundle.main.path(forResource: "Info", ofType: "plist"), let info = NSDictionary(contentsOfFile: path) as? [String: Any] {
            return getAppName(info: info)
        }
        return nil
    }
    
    /// 获取APP BundleID
    public static var gl_appBundleID: String? {
        if let path = Bundle.main.path(forResource: "Info", ofType: "plist"), let info = NSDictionary(contentsOfFile: path) as? [String: Any] {
            return info["CFBundleIdentifier"] as? String
        }
        return nil
    }
    
    /// 获取APP BuildID
    public static var gl_appBuildID: String? {
        if let path = Bundle.main.path(forResource: "Info", ofType: "plist"), let info = NSDictionary(contentsOfFile: path) as? [String: Any] {
            return info["CFBundleVersion"] as? String
        }
        return nil
    }
    
    /// 获取APP Version
    public static var gl_appVersion: String? {
        if let path = Bundle.main.path(forResource: "Info", ofType: "plist"), let info = NSDictionary(contentsOfFile: path) as? [String: Any] {
            return info["CFBundleShortVersionString"] as? String
        }
        return nil
    }
}