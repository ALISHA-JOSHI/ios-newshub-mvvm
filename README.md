NewsHub – iOS MVVM News App

NewsHub is a SwiftUI-based iOS application that displays the latest news articles using a clean MVVM architecture.
The project is built to demonstrate best practices in iOS development, including networking, data modeling, and state management.

This repository is part of my active job search portfolio as an iOS Developer.

📱 Features

Fetches latest news from NewsAPI

SwiftUI-based UI

MVVM architecture

Clean separation of concerns

Asynchronous network calls

Error handling

Scalable folder structure

🧱 Architecture

The app follows MVVM (Model–View–ViewModel):

NewsHub/
├── Models        → Data models (Article, NewsResponse)
├── Views         → SwiftUI views
├── ViewModels    → Business logic & state handling
├── Networking    → API service & network errors
├── Services      → (Reserved for future extensions)
├── Utilities     → (Helpers & utilities)

🌐 API Used

NewsAPI
https://newsapi.org/

The app fetches top headlines using the NewsAPI REST endpoints.

🔐 API Key Handling (Important)

For security reasons, the API key is NOT included in this repository.

To run the project locally:

Sign up at https://newsapi.org/

Generate your own API key

Add the key locally in your project (example below)

private let apiKey = "YOUR_API_KEY_HERE"


⚠️ Never commit API keys to GitHub
The key was intentionally removed before pushing this repository.

🚀 Getting Started

Clone the repository:

git clone https://github.com/ALISHA-JOSHI/ios-newshub-mvvm.git


Open the project:

open NewsHub.xcodeproj


Add your NewsAPI key locally

Build and run on the simulator

🛠 Tech Stack

Swift

SwiftUI

MVVM

URLSession

Git & GitHub

📌 Future Improvements

Image caching

Search functionality

Pagination

Offline support

Unit tests

Combine / async-await refactor

👩‍💻 Author

Alisha Joshi Kolangara
iOS Developer | Swift | SwiftUI | MVVM

This project is actively maintained as part of my professional portfolio.# ios-newshub-mvvm
