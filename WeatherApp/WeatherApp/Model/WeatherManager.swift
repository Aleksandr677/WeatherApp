//
//  WeatherManager.swift
//  WeatherApp
//
//  Created by Александр Христиченко on 23.05.2022.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=c80a9c8404b3556bbd2183b6adb69b60&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
}
