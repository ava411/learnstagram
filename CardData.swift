//
//  CardData.swift
//  Learnstagram
//
//  Created by Avantika Mehra on 8/26/24.
//

import Foundation

struct Flashcard: Identifiable, Codable {
    var id: UUID // Changed from 'let' to 'var'
    let content: String // Renamed from 'question' to 'content'

    // Custom initializer to allow for decoding
    init(id: UUID = UUID(), content: String) {
        self.id = id
        self.content = content
    }
}

struct Topic: Identifiable {
    var id: UUID // Changed from 'let' to 'var'
    let name: String
    let flashcards: [Flashcard]

    // Custom initializer to allow for decoding
    init(id: UUID = UUID(), name: String, flashcards: [Flashcard]) {
        self.id = id
        self.name = name
        self.flashcards = flashcards
    }
}

// Sample data
let sampleFlashcards = [
    Flashcard(content: "The capital of France is Paris."),
    Flashcard(content: "Jupiter is the largest planet in our solar system."),
    Flashcard(content: "Water is made up of two hydrogen atoms and one oxygen atom (H2O).")
]

let sampleTopics = [
    Topic(name: "General Knowledge", flashcards: sampleFlashcards)
]
