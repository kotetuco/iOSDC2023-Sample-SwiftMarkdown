//
//  ContentView.swift
//  SimpleMarkdown
//
//  Created by kotetu on 2023/07/01.
//

import SwiftUI

struct ContentView: View {
    @State var paragraphs: [MarkdownParagraph] = []
    let sourceText: String

    var body: some View {
        VStack {
            MarkdownPreviewView(paragraphs: $paragraphs)
            Spacer()
        }
        .padding(8)
        .onAppear {
            paragraphs = SimpleMarkdownParser().parseAndDebug(with: sourceText)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sourceText: sampleMarkdown)
    }
}
