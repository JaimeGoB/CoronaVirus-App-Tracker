//
//  CovidFetchRequest.swift
//  CoronaStats
//
//  Created by sj on 6/30/20.
//  Copyright © 2020 sj. All rights reserved.
//This file will be use to fetch functions from API

import Foundation
import Alamofire
import SwiftyJSON

class CovidFetchRequest: ObservableObject {
    
    //array of structs CountryData
    @Published var allCountries: [CountryData] = []
    //struct TotalData
    @Published var totalData: TotalData = testTotalData
    
    //API host and key access
    let headers: HTTPHeaders = [

    "x-rapidapi-host": "covid-19-data.p.rapidapi.com",
    "x-rapidapi-key": "d172e810e7msh47584ae043c146dp12d8eejsnb0b3c42c4a59"

    ]
    
    //create initilazer
    init() {
        getAllCountries()
        getCurrentTotal()
    }
    
    //grab information from API-worldwide stats
    func getCurrentTotal(){
        
        //The link below was from getDailyReportsTotal
        AF.request("https://covid-19-data.p.rapidapi.com/report/totals?date-format=YYYY-MM-DD&format=json&date=2020-06-18", headers: headers).responseJSON { response in
            
            let result = response.data
            
            if(result != nil){
                let json = JSON(result!)
                print(json)
                
                let confirmed = json[0]["confirmed"].intValue
                let critical = json[0]["critical"].intValue
                let deaths = json[0]["deaths"].intValue
                let recovered = json[0]["recovered"].intValue
                
                self.totalData = TotalData(confirmed: confirmed, critical: critical, deaths: deaths, recovered: recovered)
                
            }else{
                //set default values
                self.totalData = testTotalData
            }
        }
    }
    
    //function to get individual countries from API
    func getAllCountries(){
        
        //The link below was from getDailyReportsTotal
        AF.request("https://covid-19-data.p.rapidapi.com/country/all?format=json", headers: headers).responseJSON { response in
            
            let result = response.value
            
            var allCount: [CountryData] = []
            
            if result != nil{
                
                let dataDictionary = result as! [Dictionary<String, AnyObject>]
                
                //accessing all countries from API
                for countryData in dataDictionary{
                    
                    let country = countryData["country"] as? String ?? "Error"
                    let longitude = countryData["longitude"] as? Double ?? 0
                    let latitude = countryData["latitude"] as? Double ?? 0
                    let confirmed = countryData["confirmed"] as? Int64 ?? 0
                    let critical = countryData["critical"] as? Int64 ?? 0
                    let deaths = countryData["deaths"] as? Int64 ?? 0
                    let recovered = countryData["recovered"] as? Int64 ?? 0
                    
                    let countryObject = CountryData(country: country, confirmed: confirmed, critical: critical, deaths: deaths, recovered: recovered, longitude: longitude, latitude: latitude)
                    
                    allCount.append(countryObject)
                }
            }
            
            //Sort countries by highest confirmed cases.
            self.allCountries = allCount.sorted(by: {$0.confirmed > $1.confirmed})
        }
    }
}
