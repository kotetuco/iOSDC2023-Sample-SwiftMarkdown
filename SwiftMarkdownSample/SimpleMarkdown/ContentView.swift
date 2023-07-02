//
//  ContentView.swift
//  SimpleMarkdown
//
//  Created by kotetu on 2023/07/01.
//

import SwiftUI

struct ContentView: View {
    private let simpleMarkdown =
"""
# Title
**iOS**DC _Japan_ `2023`
"""

    @State var paragraphs: [MarkdownParagraph] = []

    var body: some View {
        VStack {
            MarkdownPreviewView(paragraphs: $paragraphs)
            Spacer()
        }
        .padding(8)
        .onAppear {
            paragraphs = SimpleMarkdownParser().parseAndDebug(with: simpleMarkdown)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
