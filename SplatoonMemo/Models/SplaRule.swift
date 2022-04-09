//
//  SplaRule.swift
//  SplatoonMemo
//
//  Created by 大西玲音 on 2022/04/09.
//

import Foundation

enum SplaRule: CaseIterable {
    case erea
    case yagra
    case hoko
    case asari
    case nawabari
    
    var name: String {
        switch self {
        case .erea:
            return "エリア"
        case .yagra:
            return "ヤグラ"
        case .hoko:
            return "ホコ"
        case .asari:
            return "アサリ"
        case .nawabari:
            return "ナワバリ"
        }
    }
    
    var imageName: String {
        switch self {
        case .erea:
            return "erea"
        case .yagra:
            return "yagra"
        case .hoko:
            return "hoko"
        case .asari:
            return "asari"
        case .nawabari:
            return "nawabari"
        }
    }
}
