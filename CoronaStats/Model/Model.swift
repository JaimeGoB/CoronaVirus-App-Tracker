//
//  Model.swift
//  CoronaStats
//
//  Created by sj on 6/30/20.
//  Copyright © 2020 sj. All rights reserved.
//

import Foundation

//This will calculate data worldwide for covid cases.
struct TotalData {
    
    //The variables will be used to calculate worldwide statistics from API.
    let confirmed: Int
    //let critical: Int
    let deaths: Int
    let recovered: Int
    
    
    //Calculate fatality rates in the whole world.
    //This is not provided by API so we will calculate it/
    
    var fatalityRate: Double {
        return (100.00 * Double(deaths) / Double(confirmed))
    }
    
    var recoveredRate: Double {
        return (100.00 * Double(recovered) / Double(confirmed))
    }
}

//This will calculate data per country for covid cases.
struct CountryData {
    
    //The variables will be used to calculate worldwide statistics from API.
    let country: String
    let confirmed: Int64
    //let critical: Int64
    let deaths: Int64
    let recovered: Int64
    let longitude: Double
    let latitude: Double

    //Calculate fatality rates in the whole world.
    //This is not provided by API so we will calculate it/
    
    var fatalityRate: Double {
        return (100.00 * Double(deaths) / Double(confirmed))
    }
    
    var recoveredRate: Double {
        return (100.00 * Double(recovered) / Double(confirmed))
    }
}

//Default values in case we cannot reach API
let testTotalData = TotalData(confirmed: 0, deaths: 0, recovered: 0)
let testCountryData = CountryData(country: "None", confirmed: 0, deaths: 0, recovered: 0, longitude: 0, latitude: 0)
