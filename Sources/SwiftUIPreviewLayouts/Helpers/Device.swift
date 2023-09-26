// SPDX-License-Identifier: MIT

import Foundation

public enum Device: String, CaseIterable {
    case iPad_10 = "iPad (10th generation)"
    case iPadAir_5 = "iPad Air (5th generation)"
    case iPadPro_11Inch_4 = "iPad Pro (11-inch) (4th generation)"
    case iPadPro_12point9Inch_6 = "iPad Pro (12.9-inch) (6th generation)"
    case iPadMini_6 = "iPad mini (6th generation)"
    case iPhone_15 = "iPhone 15"
    case iPhone_15_Plus = "iPhone 15 Plus"
    case iPhone_15_Pro = "iPhone 15 Pro"
    case iPhone_15_Pro_Max = "iPhone 15 Pro Max"
    case iPhone_SE_3 = "iPhone SE (3rd generation)"
    
    public var isPad: Bool {
        switch self {
        case .iPad_10, .iPadAir_5, .iPadPro_11Inch_4, .iPadPro_12point9Inch_6, .iPadMini_6:
            return true
        default:
            return false
        }
    }
}
