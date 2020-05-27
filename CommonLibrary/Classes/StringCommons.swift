//
//  StringCommons.swift
//  CommonLibrary
//
//  Created by Jose Mario Naranjo Leiva on 5/27/20.
//

import Foundation

public extension String {
    var base64Decoded: String? {
        let remainder = count % 4

        var padding = ""
        if remainder > 0 {
            padding = String(repeating: "=", count: 4 - remainder)
        }

        guard let data = Data(base64Encoded: self + padding,
                              options: .ignoreUnknownCharacters) else { return nil }

        return String(data: data, encoding: .utf8)
    }
}
