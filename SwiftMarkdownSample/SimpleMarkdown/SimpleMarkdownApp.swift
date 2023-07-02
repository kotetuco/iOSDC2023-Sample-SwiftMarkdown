//
//  SimpleMarkdownApp.swift
//  SimpleMarkdown
//
//  Created by kotetu on 2023/07/01.
//

import SwiftUI

let sampleMarkdown =
"""
# Title
**iOS**DC _Japan_ `2023`
"""

@main
struct SimpleMarkdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(sourceText: sampleMarkdown)
        }
    }
}
