//
//  MAutoClickApp.swift
//  MAutoClick
//
//  Created by 김지태 on 2023/02/15.
//

import SwiftUI


@main
struct MAutoClickApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .frame(width: 740, height: 640, alignment: .top)
        }
        .windowResizabilityContentSize()
    }
}

extension Scene {
    func windowResizabilityContentSize() -> some Scene {
        if #available(macOS 13.0, *) {
            return windowResizability(.contentSize)
        } else {
            return self
        }
    }
}
