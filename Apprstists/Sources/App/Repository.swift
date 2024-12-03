//
//  Repository.swift
//  Apprstists
//
//  Created by Alejandro Agudelo on 28/11/24.
//

import Foundation

class DiscogsRepository {
    private let networkManager: NetworkManager
    
    init(networkManager: NetworkManager? = nil) {
        if let networkManager {
            self.networkManager = networkManager
        } else {
            self.networkManager = ServiceLocator.shared.resolve()
        }
    }
    
    func searchArtist(searchToken: String) async -> (artist: [ArtistDTO]?, error: String?) {
        let apiKey = Configuration.API.key
        let apiSecret = Configuration.API.secret
        let testRequest = SearchArtistRequest(params: [searchToken, apiKey, apiSecret])
        let requestResult = await networkManager.execute(request: testRequest)

        switch requestResult {
        case .success(let response):
            return (response.results, nil)
        case .failure(let error):
            return (nil, error.localizedDescription)
        }
        
    }
    
}
