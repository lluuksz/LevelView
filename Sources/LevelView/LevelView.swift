// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

/// The view that displays level e.g. experience level.
///
/// - Parameters:
///   - level: The require level.
///   - maxLevel: The maximum level.
///
public struct LevelView: View {
    private let level: Int
    private let maxLevel: Int
    
    public init(level: Int, maxLevel: Int) {
        self.level = level
        self.maxLevel = maxLevel
    }
    
    public var body: some View {
        HStack {
            ForEach(0 ..< level, id: \.self) { number in
                Image(systemName: "circle.fill")
            }
            
            ForEach(0 ..< maxLevel - level, id: \.self) { number in
                Image(systemName: "circle")
            }
        }
    }
}

#Preview {
    LevelView(level: 3, maxLevel: 5)
        .foregroundStyle(.red)
}
