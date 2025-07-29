//
//  HomeViewModel.swift
//  NavigateSample
//
//  Created by Reo Yamamoto on 2025/07/29.
//
import Foundation

class HomeViewModel: ObservableObject {
    let uid: String
    init(uid: String) {
        self.uid = uid
    }
}
