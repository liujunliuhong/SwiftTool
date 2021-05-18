//
//  Alamofire.NetworkReachabilityManager+Extension.swift
//  SwiftTool
//
//  Created by liujun on 2021/5/18.
//  Copyright © 2021 yinhe. All rights reserved.
//

import Foundation
import Alamofire

/// `Alamofire`网络监控
extension Alamofire.NetworkReachabilityManager {
    /// 开启网络状态监控
    ///
    ///     Alamofire.NetworkReachabilityManager.default?.gl_startListeningNetwork()
    ///
    @discardableResult
    public func gl_startListeningNetwork(onQueue queue: DispatchQueue = .main,
                                         onUpdatePerforming listener: Alamofire.NetworkReachabilityManager.Listener? = nil) -> Bool {
        self.startListening(onQueue: queue) { (status) in
            listener?(status)
            switch status {
            case .notReachable:
                #if DEBUG
                print("[Alamofire.NetworkReachabilityManager] [network notReachable]")
                #endif
            case .unknown:
                #if DEBUG
                print("[Alamofire.NetworkReachabilityManager] [network unknown]")
                #endif
            case .reachable(let type):
                switch type {
                case .ethernetOrWiFi:
                    #if DEBUG
                    print("[Alamofire.NetworkReachabilityManager] [network reachable via ethernetOrWiFi]")
                    #endif
                case .cellular:
                    #if DEBUG
                    print("[Alamofire.NetworkReachabilityManager] [network reachable via cellular]")
                    #endif
                }
            }
        }
    }
    
    /// 停止网络状态监控
    ///
    ///     Alamofire.NetworkReachabilityManager.default?.gl_stopListeningNetwork()
    ///
    public func gl_stopListeningNetwork() {
        self.stopListening()
    }
}
