//
//  FlashcardView.swift
//  Learnstagram
//
//  Created by Avantika Mehra on 8/26/24.
//

import SwiftUI

struct FlashcardView: View {
    let flashcard: Flashcard // The flashcard to display

    var body: some View {
        VStack {
            Text(flashcard.content) // Display the content of the flashcard
                .font(.largeTitle)
                .padding()
        }
        .padding()
        .navigationTitle("Flashcard") // Title of the navigation bar
    }
}
