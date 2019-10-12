//
//  String+YHExtension.swift
//  FNDating
//
//  Created by apple on 2019/10/12.
//  Copyright © 2019 yinhe. All rights reserved.
//

import Foundation


extension String {
    var yh_jsonDecode: Any? {
        let data = self.data(using: .utf8)
        guard let _data = data else { return nil }
        return try? JSONSerialization.jsonObject(with: _data, options: .mutableContainers)
    }
}