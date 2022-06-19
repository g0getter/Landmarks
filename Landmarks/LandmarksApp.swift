//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 여나경 on 2022/06/14.
//

import SwiftUI

@main
struct LandmarksApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(landmark: landmarks[0])
        }
    }
}
