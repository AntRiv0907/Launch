//
//  ContentView.swift
//  diceroller
//
//  Created by Student on 4/26/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var numberOfDice: Int = 1
    
    var body: some View {
        // Stacking things vertically
        VStack {
            // Displaying text to the screen
            Text("Dice Game")
                .font(.largeTitle.monospaced())
                .bold()
            
            // Stacking things horizontally
            HStack {
                ForEach(1...numberOfDice, id: \.description) { _ in
                    DiceView()
                }
            }
            
            HStack {
                withAnimation {
                    Button("Add Die", systemImage: "plus.circle.fill") {
                        numberOfDice += 1
                    }
                }
                .disabled(numberOfDice == 5)
                .padding()
                .background(Color.green)
                .foregroundStyle(.white)
                .cornerRadius(10)
                .padding()
                
                withAnimation{
                    Button("Remove Die", systemImage: "minus.circle.fill") {
                        numberOfDice -= 1
                    }
                }
                .disabled(numberOfDice == 1)
                .padding()
                .background(Color.red)
                .foregroundStyle(.white)
                .cornerRadius(10)
                .padding()
            }
            .labelStyle(.iconOnly)
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundColorApp)
        .tint(.white)
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}
