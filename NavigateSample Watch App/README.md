
## 状態監視と画面遷移の仕組み

このアプリでは、SwiftUI の `@EnvironmentObject` と `@Published` を利用してログイン状態の変化を監視し、自動的に画面遷移を行います。

### 状態監視の仕組み

| ステップ | 内容 |
|---------|------|
| ① **監視対象の定義** | `AuthManager` 内で `@Published var isLoggedIn` を定義し、ログイン状態の変化を通知可能にする |
| ② **監視の登録** | `@EnvironmentObject var authManager` を使用した View は、`isLoggedIn` の変化を自動で監視する |
| ③ **監視の有効化** | `RootView()` に `.environmentObject(authManager)` を付与することで View 階層に監視対象を注入する |
|  **結果** | `isLoggedIn` の値が変わると `RootView` が再描画され、`LoginView` または `HomeView` に自動で切り替わる |

---

###  ログアウトによる画面遷移の流れ


[ユーザー] MoreViewでログアウトボタン押下
       ↓
[View] Button が押され ViewModel.logout() 実行
       ↓
[ViewModel] authManager.logout() → isLoggedIn = false
       ↓
[ViewModel] appState.path.removeLast(all)
       ↓
[SwiftUI] NavigationStack の path が空になる
       ↓
[RootView] if isLoggedIn → false → LoginViewを表示
