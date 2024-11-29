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

//struct FoodTrucksRequest: Request {
//
//    typealias Response = [FoodTruckDTO]
//    typealias Body = [String : String]
//    
//    let endpoint = "?dayorder=%@"
//    let method: RequestMethod = .get
//    var params: [String]
//    let body: Body? = nil
//}



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


//struct FoodTruckDTO: Decodable {
//    let applicant: String
//    let location: String
//    let locationdesc: String?
//    let optionaltext: String?
//    let latitude: String
//    let longitude: String
//    let dayorder: String
//    let starttime: String
//    let endtime: String
//    let start24: String
//    let end24: String
//
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
//}
