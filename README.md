---

# Inspirational Quotes App

## Overview
This iPhone app provides daily doses of inspiration through famous and motivational quotes. Utilizing the Quotable API, it fetches and displays a random quote, allowing users to gain insights and inspiration throughout the day. This app is built using Swift and is designed for anyone seeking motivational content on their mobile device.

## Features
- **Fetch Random Quotes**: Automatically fetches a new inspirational or famous quote at launch
- **Display Quotes**: Shows the quote and author in a clean and minimalistic UI.
- **Auto-Update**: Quotes refresh automatically, no user interaction required.

The following functionality is completed:

- [X] App has a capabiltiy to take a picture
- [X] App has a gallery that presents new quote and a picture by user 

## Loom

https://www.loom.com/share/4a491df30cbf4bb8916ae6484e310cd4

## How It Works
The app makes use of the `QuoteService` to handle API requests to Quotable:
- The `QuoteService` class contains methods to fetch data from the Quotable API.
- It uses `URLSession` to manage network requests and `JSONDecoder` for parsing the fetched data into model objects defined by the `Quote` struct.

## Dependencies
This project uses the following external service:
- **Quotable API**: Fetches a variety of quotes tagged with `inspirational` and `famous-quotes`. API documentation can be found [here](https://quotable.io).



## License
Distributed under the MIT License. See `LICENSE` for more information.


## Acknowledgements
- [Quotable API](https://quotable.io)


---



https://www.loom.com/share/0dd9267b9b3347709d13d4664c18aea2


#App I like so far is the picture progress/ inspirtional quote app so far

: 
Hand drawn wireframe so far:

https://www.loom.com/share/f5e1b0b0662a4244a90b85fc0564800b
