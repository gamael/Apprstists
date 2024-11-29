//
//  Configuration.swift
//  Apprstists
//
//  Created by Alejandro Agudelo on 28/11/24.
//

import Foundation

struct Configuration {
    private init() {}
    struct API {
        private init() {}
        static let defaultFormat = "json"
        static let apiURL = "https://data.sfgov.org/resource/jjew-r69b.\(defaultFormat)"
    }
}
