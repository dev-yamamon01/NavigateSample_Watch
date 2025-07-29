//
//  LoginView.swift
//  NavigateSample
//
//  Created by Reo Yamamoto on 2025/07/29.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var appState: AppState
    @EnvironmentObject var authManager: AuthManager
    @StateObject private var viewModel = LoginViewModel()

    var body: some View {
        VStack {
            Text("ログイン画面")
            Button("ログイン") {
                viewModel.login(authManager: authManager, appState: appState)
            }
        }
    }
}
