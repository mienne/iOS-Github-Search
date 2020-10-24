//
//  DDLogFlag.swift
//  GithubUserSearch
//
//  Created by hyeonjeong on 2020/05/30.
//  Copyright © 2020 hyeonjeong. All rights reserved.
//

import CocoaLumberjack

// 출처: - https://github.com/devxoul/Drrrible/blob/master/Drrrible/Sources/Logging/Logger.swift
extension DDLogFlag {

    var level: String {
        switch self {
        case DDLogFlag.error: return "❤️ ERROR"
        case DDLogFlag.warning: return "💛 WARNING"
        case DDLogFlag.info: return "💙 INFO"
        case DDLogFlag.debug: return "💚 DEBUG"
        case DDLogFlag.verbose: return "💜 VERBOSE"
        default: return "☠️ UNKNOWN"
        }
    }
}
