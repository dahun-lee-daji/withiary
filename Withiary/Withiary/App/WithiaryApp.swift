//
//  WithiaryApp.swift
//  Withiary
//
//  Created by 이다훈 on 2023/09/06.
//

import SwiftUI
import ComposableArchitecture

@main
struct WithiaryApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

final class AppDelegate: NSObject, UIApplicationDelegate {
    
    let store = Store(
        initialState: AppReducer.State()
    ) {
        AppReducer()
    }
    
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
    ) -> Bool {
        store.send(.appDelegate(.didFinishLaunching))
        return true
    }
}
