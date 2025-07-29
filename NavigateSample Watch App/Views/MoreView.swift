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
    //上記二つをここに書くことでこれらのインスタンスに変化が生じた時(logout()実行時など)に自動でViewを更新する
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
