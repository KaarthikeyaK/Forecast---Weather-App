//
//  WeatherModel.swift
//  Forecast
//
//  Created by KAARTHIKEYA K on 29/01/22.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String{
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...299:
            return "cloud.bolt.rain"
        case 300...399:
            return "cloud.drizzle"
        case 600...699:
            return "cloud.snow"
        case 500...599:
            return "cloud.rain"
        case 801...899:
            return "cloud"
        case 800:
            return "sun.max"
        case 700...799:
            return "cloud.fog"
        default:
            return "sun.min"
        }
    }
}
