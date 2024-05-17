// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

public struct LevelView: View {
    let level: Int
    let maxLevel: Int
    let color: Color
    let accessibilityLabel: String
    
    public init(level: Int, maxLevel: Int, color: Color, accessibilityLabel: String) {
        self.level = level
        self.maxLevel = maxLevel
        self.color = color
        self.accessibilityLabel = accessibilityLabel
    }
    
    public var body: some View {
        HStack {
            ForEach(0 ..< level, id: \.self) { number in
                Image(systemName: "circle.fill")
                    .foregroundStyle(color)
            }
            
            ForEach(0 ..< maxLevel - level, id: \.self) { number in
                Image(systemName: "circle")
                    .foregroundStyle(color)
            }
        }
        .accessibilityElement(children: .ignore)
        .accessibilityIdentifier("Level")
        .accessibilityLabel(Text(accessibilityLabel))
    }
}

#Preview {
    LevelView(
        level: 3,
        maxLevel: 5,
        color: .red,
        accessibilityLabel: "3/5")
}
