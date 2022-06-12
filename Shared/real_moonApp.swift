//
//  real_moonApp.swift
//  Shared
//
//  Created by Gladys on 6/9/22.
//

import SwiftUI

@main
struct real_moonApp: App {
    let realmoon = PhotoVM()
    var body: some Scene {
        WindowGroup {
            RealMoonNavigationView(viewModel: realmoon)
        }
    }
}
