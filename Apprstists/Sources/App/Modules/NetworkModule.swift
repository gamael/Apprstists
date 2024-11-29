//
//  RemoteModule.swift
//  Apprstists
//
//  Created by Alejandro Agudelo on 28/11/24.
//

import Foundation

class NetWorkModule: ServiceLocatorModule {
    func registerServices(container: ServiceLocator) {
        let networkManager = NetworkManagerImpl(baseURL: Configuration.API.apiURL)
        container.register({ networkManager as NetworkManager })
    }
}
