//
//  PromptView.swift
//  Mochi Diffusion
//
//  Created by Joshua Park on 12/18/22.
//

import SwiftUI

struct PromptView: View {
    @EnvironmentObject var store: Store
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Prompt:")
            TextEditor(text: $store.prompt)
                .scrollContentBackground(.hidden)
                .background(Color.black.opacity(0.15))
                .font(.system(size: 14))
                .frame(maxHeight: 85)
                .border(Color.black.opacity(0.1))
                .cornerRadius(4)
                
            Spacer().frame(height: 6)
            
            Text("Negative Prompt:")
            TextEditor(text: $store.negativePrompt)
                .scrollContentBackground(.hidden)
                .background(Color.black.opacity(0.15))
                .font(.system(size: 14))
                .frame(maxHeight: 52)
                .border(Color.black.opacity(0.1))
                .cornerRadius(4)
            
            HStack {
                Spacer()
                Button("Generate") {
                    store.generate()
                }
                .disabled($store.currentModel.wrappedValue.isEmpty)
                .buttonStyle(.borderedProminent)
                .padding(.top, 6)
            }
        }
    }
}
