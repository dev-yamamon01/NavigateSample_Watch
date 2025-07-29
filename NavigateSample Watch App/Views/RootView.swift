//
//  ContentView.swift
//  NavigateSample Watch App
//
//  Created by Reo Yamamoto on 2025/07/29.
//

import SwiftUI

struct RootView: View {
    @StateObject var appState = AppState()
    @StateObject var authManager = AuthManager.shared

    var body: some View {
        NavigationStack(path: $appState.path) {
            Group {
                if authManager.isLoggedIn {
                    HomeView(uid: "dummy_uid")
                } else {
                    LoginView()
                }
            }
            .navigationDestination(for: PushNavigation.self) { destination in
                switch destination {
                case .home(let uid):
                    HomeView(uid: uid)
                case .more:
                    MoreView()
                }
            }
        }
        .environmentObject(appState)
        .environmentObject(authManager)
    }
}

