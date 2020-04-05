# iOS WeatherApp with SwiftUI

<div style="width: 1000px; height 600px;"><img src="Screenshoot/Screenshoot-1.png" width="30%" height="30%" align="right"></div>


## Overview

iOS WeatherApp is copy from apple weather app uses Openweathermap API and build with SwiftUI. Feature this app same with apple weather like get current weather & details, get hourly forecast weather and get daily forecast. But detail not fully some because limition free plan from Openweathermap.

### Keyword
- SwiftUI
- JSON & Codable
- MVVM
- ObservableObject

## Getting Started

### Prerequisites

- A valid API key from Openweathermap
- A Mac running macOS Catalina
- Xcode 11.3.1

### Installation

1. Clone or download the project to your local machine
2. Open the project in Xcode
3. Replace `YOURAPIKEY` with your valid Openweathermap API key in `OpenweathermapAPIClient.swift`

```swift
class OpenweathermapClient {

    ```
    private let apiKey = "YOURAPIKEY"
```

4. Replace `cityId` with your city want to use in `WeatherViewModel.swift` you can download list city json in [here](http://bulk.openweathermap.org/sample/)

```swift
class WeatherViewModel: ObservableObject {

    ```
    private let cityId = "1627459"
```

5. Run the simulator

## Thanks to

Inspiring project from [Weather-SwiftUI](https://github.com/bobbyconti/Weather-SwiftUI)

Open API from [OpenWeatherMap](https://openweathermap.org)
