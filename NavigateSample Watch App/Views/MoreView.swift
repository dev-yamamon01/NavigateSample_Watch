//
//  MoreView.swift
//  NavigateSample
//
//  Created by Reo Yamamoto on 2025/07/29.
//
import SwiftUI

struct MoreView: View {
    @EnvironmentObject var authManager: AuthManager
    @EnvironmentObject var appState: AppState
    @StateObject private var viewModel = MoreViewModel()

    var body: some View {
        VStack {
            Text("More画面")
            Button("ログアウト") {
                viewModel.logout(authManager: authManager, appState: appState)
            }
        }
    }
}
