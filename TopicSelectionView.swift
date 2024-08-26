//
//  TopicSelectionView.swift
//  Learnstagram
//
//  Created by Avantika Mehra on 8/26/24.
//

import SwiftUI

struct TopicSelectionView: View {
    @Binding var selectedTopic: Topic? // Binding to the selected topic
    var onTopicSelected: (Topic) -> Void // Closure to handle topic selection

    var body: some View {
        List(sampleTopics) { topic in
            Button(action: {
                selectedTopic = topic // Update the selected topic
                onTopicSelected(topic) // Call the closure to handle the topic selection
            }) {
                Text(topic.name) // Display the topic name
            }
        }
        .navigationTitle("Select a Topic") // Title of the navigation bar
    }
}
