//
//  ContentView.swift
//  SampleWatchApp Watch App
//
//  Created by Andrew J. Ferchland on 12/20/23.
//

import SwiftUI

struct ContentView: View {
    @State private var button = "🥺"
    
    struct CustomButtonStyle: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding()
                .background(configuration.isPressed ? Color.teal : Color.mint)
                .clipShape(Circle())
                .foregroundColor(.mint)
                .font(.system(size: 100, weight: .bold, design: .default))
        }
    }

    
    var body: some View {
        
            
                VStack {
                    
                    Text("Tap to change mood")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.yellow)
                        
                    Button(button) {
                        if button == "🥺" {
                            button = "😍"
                        } else if button == "😍" {
                            button = "🤬"
                        } else if button == "🤬" {
                            button = "🥺"
                        }
                   
                    }
                    
                    .buttonStyle(CustomButtonStyle())
                    .padding(.top)
                    
                    }
                .background(LinearGradient(gradient: Gradient(colors: [.green, .blue]), startPoint: .trailing, endPoint: .leading)
                    .frame(width: 300.0, height: 300.0)
                    .edgesIgnoringSafeArea(.all))
        }
    
    }

#Preview {
    ContentView()
}
