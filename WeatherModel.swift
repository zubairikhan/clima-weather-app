//
//  WeatherModel.swift
//  Clima
//
//  Created by Zubair Irfan Khan on 06/06/2022.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200..<300:
            return "cloud.bolt.rain"
        case 300..<400:
            return "cloud.drizzle"
        case 500..<600:
            return "cloud.rain"
        case 600..<700:
            return "cloud.snow"
        case 700..<800:
            return "smoke"
        case 801..<900:
            return "cloud"
        default:
            return "sun.max"
        }
    }
}
