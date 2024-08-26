//
//  ContentView.swift
//  Learnstagram
//
//  Created by Avantika Mehra on 8/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTopic: Topic? // State variable to hold the selected topic
    @State private var currentFlashcard: Flashcard? // State variable to hold the current flashcard
    @State private var previousFlashcard: Flashcard? // State variable to hold the previous flashcard

    var body: some View {
        NavigationView {
            if let flashcard = currentFlashcard {
                // Display the current flashcard
                FlashcardView(flashcard: flashcard,
                              showRandomFlashcard: showRandomFlashcard,
                              showPreviousFlashcard: showPreviousFlashcard)
            } else {
                // Show the topic selection view when no flashcard is selected
                TopicSelectionView(selectedTopic: $selectedTopic, onTopicSelected: { topic in
                    // Set the current flashcard to a random one from the selected topic
                    setRandomFlashcard(from: topic)
                })
            }
        }
    }
    
    // Function to set a random flashcard from the selected topic
    private func setRandomFlashcard(from topic: Topic) {
        if let randomFlashcard = topic.flashcards.randomElement() {
            previousFlashcard = currentFlashcard // Save the current flashcard as previous
            currentFlashcard = randomFlashcard
        }
    }
    
    // Function to show a new random flashcard
    func showRandomFlashcard() {
        if let topic = selectedTopic {
            setRandomFlashcard(from: topic)
        }
    }
    
    // Function to show the previous flashcard
    func showPreviousFlashcard() {
        currentFlashcard = previousFlashcard // Set the current flashcard to the previous one
    }
}

// Preview provider for ContentView
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
