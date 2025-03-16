void main() {
  /*
4. Weather Report:
Use Map and List to create a program that stores weather data for different cities
(temperature, humidity, etc.). Write a function that can retrieve and print weather
details using a city name.

   */
  Map<String, List> weatherData = {
    "France 🇫🇷": [
      "Temperature : 9°C (48°F)",
      "Humidity: 46%",
      "Wind: NNE at 27 km/h"
    ],
    "USA 🇺🇸": [
      "Temperature : 46°F (8°C)",
      "Humidity: Not Specified",
      "Wind: North at 2 mph​"
    ],
    "Australia 🇦🇺": [
      "Temperature : 23°C (73°F)",
      "Humidity: Not Specified",
      "Wind: NNorthwest at 25 to 40 km/h​"
    ]
  };

  // print(weatherData["France"]);
  weatherData.forEach((key, value) {
    print("$key: $value");
  });
}
