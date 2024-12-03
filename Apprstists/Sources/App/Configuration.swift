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
        static let apiURL = "https://api.discogs.com/"
        static let apiAgentHeader = "Apprstists/1.0"
        static let key = "fDunvyWMKzmPZOATaRgj"
        static let secret = "RKRigOoxFZTUmlvxQiEfvFKdEqYXCOaL"
    }
}
