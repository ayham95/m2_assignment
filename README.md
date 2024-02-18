# M2 Watchlist 🚀🤑
A simple feature built with Dart/Flutter.

## Overview and Architecture 👀
Unfortunately, it's not a complete feature giving the limited time (8-10 hours).
The API I used isn't super compatible with Binance's so some coins might not load.

### Walkthrough my thought process
My focus was on showing modularity, testability, scalability, and a good looking UI. I didn't focus much on user experience.

The feature is composed of multiple modules:

- [ticker_list](packages/features/ticker_list)
- [ticker_tile](packages/features/ticker_tile)
- [candy](packages/libraries/candy)
- [result](packages/libraries/result)

Each module has this structure:

- module
    - feature_name
        - data
            - mappers
            - repositories
            - responses
            - sources
        - domain
            - entities
            - exceptions
            - use_cases
        - ui
            - bloc
            - widgets
    - shared
        - di

Ticker tile is responsible to establish its own Websocket connection lifecycle while Ticker list is responsible for fetching coin list and supply it to Ticker tiles.

Since this assignment is only for showcasing, I didn't test packages but I usually always do 100% coverage if I have time.

## How to Run 🔧
I upgraded to dart 3 to use the sealed classed feature so you might need to upgrade

1. **Setup you environment**
```yaml
Flutter: 3.10.5 • channel stable
Dart: 3.0.5
```
2. **Run**
   You need to run these 2 commands in every package and the root directory
```bash
$ flutter pub get
```
```bash
$ dart run build_runner build
```

3. **Run the app**
```bash
$ flutter run
```

## Possible Improvements 📈
- Cache wss listeners so widget don't have to re-establish connections frequently.
- Add navigation & localization
- Create a custom inherited theme

## Known Issues
- Some coins aren't showing because of incompatible APIs

I tried to keep it between 8-10 hours of work.