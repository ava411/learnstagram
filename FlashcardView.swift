//
//  FlashcardView.swift
//  Learnstagram
//
//  Created by Avantika Mehra on 8/26/24.
//

import SwiftUI

struct FlashcardView: View {
    let flashcard: Flashcard // The flashcard to display
    var showRandomFlashcard: () -> Void // Closure to show a new random flashcard
    var showPreviousFlashcard: () -> Void // Closure to show the previous flashcard

    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text(flashcard.content) // Display the content of the flashcard
                    .font(.largeTitle)
                    .padding()
            }
            .padding()
            .navigationTitle("Flashcard") // Title of the navigation bar
            .contentShape(Rectangle()) // Make the whole view tappable
            .onTapGesture { location in
                let width = geometry.size.width
                let tapLocation = location.x // Get the x-coordinate of the tap
                
                if tapLocation > width * 0.7 {
                    // Tap on the right side (70%)
                    showRandomFlashcard() // Show the next flashcard
                } else if tapLocation < width * 0.3 {
                    // Tap on the left side (~30%)
                    showPreviousFlashcard() // Show the previous flashcard
                }
            }
        }
    }
}
