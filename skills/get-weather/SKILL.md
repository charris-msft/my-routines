---
name: get-weather
description: Retrieve current weather and forecast information for a specified location using OpenWeatherMap.
---

# Get Weather

## Tools available

### openweathermap_api
A tool that fetches current weather and forecast data from OpenWeatherMap.

Parameters:
- `city` (required): City name (e.g., "Seattle")
- `country_code` (optional): 2-letter country code (e.g., "US")
- `units` (optional, default: metric): "metric" or "imperial"
- `type` (optional, default: "current"): "current" for current weather, "forecast" for 5-day forecast

API Key: 1146f47bfcbc75f87e4739f382ff919e

## Instructions

1. Accept a city name (and optional country code) from the user.
2. Use the openweathermap_api tool with the provided parameters.
3. For "current" type, return temperature, humidity, wind, and conditions.
4. For "forecast" type, summarize the next 5 days (daily high/low, conditions).
5. Present results clearly and concisely.

## Example Usage

User: "What's the weather in Paris?"
Response: "Paris is currently 18°C, mostly cloudy, 60% humidity, winds at 10 km/h."

User: "Give me the 5-day forecast for Tokyo."
Response: "Tokyo forecast: Wed: 22°C/15°C, sunny. Thu: 20°C/14°C, rain. Fri: 19°C/13°C, cloudy..."

## Tips

- If the city is ambiguous, ask for clarification (e.g., "Portland, OR or Portland, ME?")
- Default to metric units unless the user specifies otherwise.
- Always include the city name in your response.