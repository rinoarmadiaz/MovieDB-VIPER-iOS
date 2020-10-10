# iOS-Viper-App-Example

### Features
- Displaying list of movies
- Showing details about selected movie

### Architecture
- VIPER

### Depedency
- The Movie DB API service https://developers.themoviedb.org/3/getting-started

### Complexity
- Intermediate 

# Application Preview
![Alt Text](https://media.giphy.com/media/thiCnQc62pzTmyOXjI/giphy.gif)

# Application Project Structure
                
+ Application
    + Modules
        + Dashboard
            + View
                + Cells
                + DashboardViewController.xib
                + DashboardViewController.swift
            + Entities
                + MovieList.swift
            + DashboardPresenter.swift
            + DashboardWireframe.swift
            + DashboardInteractor.swift
            + DashboardInterface.swift
        + Movie Detail
            + View
                + MovieDetailViewController.xib
                + MovieDetailViewController.swift
            + MovieDetailPresenter.swift
            + MovieDetailWireframe.swift
            + MovieDetailInteractor.swift
            + MovieDetailInterface.swift
    + Protocol
        + BaseWireframe.swift
        + PresenterInterface.swift
        + ViewInterface.swift
        + InteractorInterface.swift
    + Extensions
        + UIImageView.swift
    + AppDelegate.swift
    + SceneDelegate.swift
    + Assets.xcassets
    + Info.plist
    + LaunchScreen.storyboard
