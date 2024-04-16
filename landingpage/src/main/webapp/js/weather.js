window.addEventListener('load', () => {
    fetchWeatherData();
});

async function fetchWeatherData() {
    const apiKey = '808f73be5e14f9f8554de57eb0c0c13e';
	var city = "Greater Noida";
    const url = `https://api.openweathermap.org/data/2.5/weather?q=${city}&units=metric&appid=${apiKey}`;
    try {
        const response = await fetch(url);
        const data = await response.json();
        const temperature = data.main.temp;
        const weatherDescription = data.weather[0].description;
        const humidity = data.main.humidity;
        const location = city; // Use the city variable as the location data
        const date = new Date(data.dt * 1000).toLocaleDateString();
        const day = new Date(data.dt * 1000).toLocaleDateString('en-US', { weekday: 'long' });
        const weatherCondition = getWeatherCondition(data.weather[0].id);

        updateWeatherUI(temperature, weatherDescription, humidity, location, date, day, weatherCondition);
    } catch (error) {
        console.error('Error fetching weather data:', error);
    }
}

function getWeatherCondition(weatherCode) {
    if (weatherCode >= 200 && weatherCode < 300) {
        return 'thunderstorm';
    } else if (weatherCode >= 300 && weatherCode < 600) {
        return 'rain';
    } else if (weatherCode >= 600 && weatherCode < 700) {
        return 'snow';
    } else if (weatherCode >= 801 && weatherCode < 900) {
        return 'few-clouds';
    } else {
        return 'clear-sky';
    }
}

function updateWeatherUI(temperature, weatherDescription, humidity, location, date, day, weatherCondition) {
    document.getElementById('temperature').textContent = temperature + '°C';
    document.getElementById('weather-description').textContent = weatherDescription;
    document.getElementById('humidity').textContent = 'Humidity: ' + humidity + '%';
    document.getElementById('location').textContent = location; // Update location element with city name
    document.getElementById('date').textContent = date; // Update date element
    document.getElementById('day').textContent = day; // Update day element
    // Update weather icon
    const weatherIconElement = document.getElementById('weather-icon');
    weatherIconElement.src = 'assets/img/' + weatherCondition + '.png';
    weatherIconElement.alt = weatherCondition; // Add alt attribute for accessibility
}
