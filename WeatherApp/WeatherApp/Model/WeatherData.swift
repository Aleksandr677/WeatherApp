//
//  WeatherData.swift
//  WeatherApp
//
//  Created by Александр Христиченко on 24.05.2022.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let main: Main
    let weather : [Weather]
}

struct Main: Codable {
    let temp: Double
}

struct Weather: Codable {
    let id: Int
    //let description: String - we do not need it right now
}
