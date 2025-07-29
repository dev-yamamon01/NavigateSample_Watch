//
//  HomeView.swift
//  NavigateSample
//
//  Created by Reo Yamamoto on 2025/07/29.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var appState: AppState
    let uid: String
    @StateObject private var viewModel: HomeViewModel

    init(uid: String) {
        self.uid = uid
        _viewModel = StateObject(wrappedValue: HomeViewModel(uid: uid))
    }

    var body: some View {
        VStack {
            Text("ユーザーID: \(viewModel.uid)")
            Button("More画面へ") {
                appState.path.append(PushNavigation.more)
            }
        }
    }
}
