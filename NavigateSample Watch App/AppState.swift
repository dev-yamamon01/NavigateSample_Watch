//
//  AppState.swift
//  NavigateSample
//
//  Created by Reo Yamamoto on 2025/07/29.
//

import Foundation
import SwiftUI

class AppState: ObservableObject {
    @Published var path = NavigationPath()
}
