//
//  SearchModels.swift
//  Apprstists
//
//  Created by Alejandro Agudelo on 28/11/24.
//

import Foundation

//struct ListViewModel {
//    let numberOfSections: Int = 1
//    let numberOfEntries: Int
//    let cells: [FTInfoTableViewCellViewModel]
//}

struct SearchArtistRequest: Request {

    typealias Response = TestDTO
    typealias Body = [String : String]
    
    let endpoint = "database/search?q=%@&type=artist&key=%@&secret=%@"
    let method: RequestMethod = .get
    var params: [String]
    let body: Body? = nil
}

//struct FoodTruck {
//    let name: String
//    let location: String
//    let foodItemsSold: String
//    let workingHours: String
//    let latitude: Double
//    let longitude: Double
//    
//    func toViewModel() -> FTInfoTableViewCellViewModel {
//        let viewModel: FTInfoTableViewCellViewModel = .init(
//            foodTruckName: name,
//            foodTruckAddress: location,
//            foodTruckFood: foodItemsSold,
//            foodTruckHours: workingHours
//        )
//        return viewModel
//    }
//}


struct ArtistDTO: Decodable {
    let id: Int
    let type: String
    let masterID: String?
    let masterUrl: String?
    let thumb: String
    let coverImage: String
    let resourceURL: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case type
        case masterID = "master_id"
        case masterUrl = "master_url"
        case thumb
        case coverImage = "cover_image"
        case resourceURL = "resource_url"
        
    }
    

//    func toEntity() -> FoodTruck {
//        return .init(
//            name: applicant,
//            location: location,
//            foodItemsSold: optionaltext ?? "",
//            workingHours: starttime+"-"+endtime,
//            latitude: Double(latitude) ?? 0.0,
//            longitude: Double(longitude) ?? 0.0
//        )
//    }
}

struct TestDTO: Decodable {
    let pagination: Pagination
    let results: [ArtistDTO]
}
