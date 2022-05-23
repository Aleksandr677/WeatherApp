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
        perfotmRequest(urlString: urlString)
        //print(urlString)
    }
    
    func perfotmRequest(urlString: String) {
        //1. Create URL
        if let url = URL(string: urlString) {
            //2. Create a URL Session
            let session = URLSession(configuration: .default)
            
            //3. Give the session a task
            let task = session.dataTask(with: url, completionHandler: handle(data: response: error:))
            
            //4. Start the task
            task.resume()
        }
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString!)
        }
    }
}
