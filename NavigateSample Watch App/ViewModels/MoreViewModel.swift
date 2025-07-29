//
//  LogoutViewModel.swift
//  NavigateSample
//
//  Created by Reo Yamamoto on 2025/07/29.
//

import Foundation

class MoreViewModel: ObservableObject {
    func logout(authManager: AuthManager, appState: AppState) {
        authManager.logout()
        appState.path.removeLast(appState.path.count)
    }
}
