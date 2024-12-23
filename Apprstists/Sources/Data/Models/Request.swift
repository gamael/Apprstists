//
//  Request.swift
//  Apprstists
//
//  Created by Alejandro Agudelo on 26/11/24.
//

import Foundation

enum RequestMethod: String {
    case post = "POST"
    case get = "GET"
}

protocol Request {
    associatedtype Response: Decodable
    associatedtype Body: Codable
    
    var endpoint: String { get }
    var method: RequestMethod { get }
    var params: [String] { get }
    var headers: [[String: String]] { get }
    var body: Body? { get }
    var bodyEncoder: JSONEncoder { get }
    var responseDecoder: JSONDecoder { get }
}

extension Request {
    var path: String {
        get {
            return String(format: self.endpoint, arguments: params)
        }
    }
    
    var bodyEncoder: JSONEncoder {
        get {
            return JSONEncoder()
        }
    }
    
    var responseDecoder: JSONDecoder {
        get {
            return JSONDecoder()
        }
    }
    
    //Hardcoding the header just for compatibility with Discogs
    var headers: [[String: String]] {
        return [["User-Agent": Configuration.API.apiAgentHeader]]
    }
}
