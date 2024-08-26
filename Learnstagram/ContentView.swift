//
//  ContentView.swift
//  Learnstagram
//
//  Created by Avantika Mehra on 8/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTopic: Topic? // State variable to hold the selected topic
    
    var body: some View {
        NavigationView {
            if let topic = selectedTopic {
                // Display flashcards for the selected topic
                List(topic.flashcards) { flashcard in
                    NavigationLink(destination: FlashcardView(flashcard: flashcard)) {
                        Text(flashcard.content) // Show the content on the list
                    }
                }
                .navigationTitle(topic.name) // Title of the navigation bar
            } else {
                // Show the topic selection view when no topic is selected
                TopicSelectionView(selectedTopic: $selectedTopic)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView() // Preview the ContentView
            .preferredColorScheme(.light) // Optional: Set the color scheme for the preview
    }
}
