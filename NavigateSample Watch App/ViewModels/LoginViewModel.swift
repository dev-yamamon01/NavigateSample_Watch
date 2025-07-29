//
//  LoginViewModel.swift
//  NavigateSample
//
//  Created by Reo Yamamoto on 2025/07/29.
//

import Foundation

class LoginViewModel: ObservableObject {
    func login(authManager: AuthManager, appState: AppState) {
        authManager.login()
        appState.path.append(PushNavigation.home(uid: "dummy_uid"))
    }
}
