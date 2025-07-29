//
//  AuthManager.swift
//  NavigateSample
//
//  Created by Reo Yamamoto on 2025/07/29.
//
import Foundation
import Combine

class AuthManager: ObservableObject {
    @Published var isLoggedIn: Bool = false
    static let shared = AuthManager()//シングルトンとして呼び出すための定義
    
    init() {}
    
    func login() {
        self.isLoggedIn=true
        print("仮想ログイン完了")
    }
    
    func logout() {
        //        DispatchQueue.main.async {
        //            AppState.shared.pushNavigation = PushNavigation.none
        //            self.isLoggedIn=false
        //        }
        self.isLoggedIn=false
        print("仮想ログアウト完了")
    }
}
