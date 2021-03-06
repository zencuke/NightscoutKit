//
//  URL.swift
//  NightscoutKit
//
//  Created by Michael Pangburn on 2/18/18.
//  Copyright © 2018 Michael Pangburn. All rights reserved.
//

import Foundation


extension URL {
    func appendingPathComponents(_ pathComponents: String...) -> URL {
        var base = self
        pathComponents.forEach { base.appendPathComponent($0) }
        return base
    }

    var components: URLComponents? {
        return URLComponents(url: self, resolvingAgainstBaseURL: true)
    }
}

extension URLComponents {
    func addingQueryItems(_ queryItems: [URLQueryItem]) -> URLComponents {
        var base = self
        base.queryItems = (base.queryItems ?? []) + queryItems
        return base
    }
}
