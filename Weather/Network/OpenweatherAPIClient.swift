//
//  OpenweatherAPIClient.swift
//  Weather
//
//  Created by Irfan Rafii Musyafa on 05/04/20.
//  Copyright © 2020 Irmusyafa. All rights reserved.
//

import Foundation

class OpenweatherAPIClient {
    fileprivate let apiKey = "YOURAPIKEY"

    lazy var baseUrl: URL = {
        return URL(string: "https://api.openweathermap.org/data/2.5/forecast?APPID=\(self.apiKey)/&units=metric")!
    }()
    
    let decoder = JSONDecoder()
    let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
    
    typealias CurrentWeatherCompletionHandler = (CurrentWeather?, Error?) -> Void
    typealias ForecastWeatherCompletionHandler = (ForecastWeatherResponse?, Error?) -> Void
    
    func getCurrentWeather(at cityId: String, completionHandler completion: @escaping CurrentWeatherCompletionHandler) {
        
        guard let url = URL(string: "&id=\(cityId)", relativeTo: baseUrl) else {
            completion(nil, ResponseError.invalidURL)
            return
        }
        
        let request = URLRequest(url: url)
        
        let task = session.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let data = data {
                    guard let httpResponse = response as? HTTPURLResponse else {
                        completion(nil, ResponseError.requestFailed)
                        return
                    }
                    
                    if httpResponse.statusCode == 200 {
                        do {
                            let weather = try self.decoder.decode(CurrentWeather.self, from: data)
                            completion(weather, nil)
                        } catch let error {
                            completion(nil, error)
                        }
                    } else {
                        completion(nil, ResponseError.invalidData)
                    }
                } else if let error = error {
                    completion(nil, error)
                }
            }
        }
        
        task.resume()
    }
    
    func getForecastWeather(at cityId: String, completionHandler completion: @escaping ForecastWeatherCompletionHandler) {
        
        guard let url = URL(string: "&id=\(cityId)", relativeTo: baseUrl) else {
            completion(nil, ResponseError.invalidURL)
            return
        }
        
        let request = URLRequest(url: url)
        
        let task = session.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let data = data {
                    guard let httpResponse = response as? HTTPURLResponse else {
                        completion(nil, ResponseError.requestFailed)
                        return
                    }
                    
                    if httpResponse.statusCode == 200 {
                        do {
                            let weather = try self.decoder.decode(ForecastWeatherResponse.self, from: data)
                            completion(weather, nil)
                        } catch let error {
                            completion(nil, error)
                        }
                    } else {
                        completion(nil, ResponseError.invalidData)
                    }
                } else if let error = error {
                    completion(nil, error)
                }
            }
        }
        
        task.resume()
    }
}


enum ResponseError: Error {
    case requestFailed
    case responseUnsuccessful(statusCode: Int)
    case invalidData
    case jsonParsingFailure
    case invalidURL
}
