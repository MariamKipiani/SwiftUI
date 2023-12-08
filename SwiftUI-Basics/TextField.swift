//
//  TextField.swift
//  SwiftUI-Basics
//
//  Created by user on 12/7/23.
//

import SwiftUI

struct TextFields: View {
    var title: String
    var placeholder: String
    var isSecure: Bool
    @State private var text: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 9) {
            Text(title)
                .font(.system(size: 25, weight: .bold))
            if isSecure {
                SecureField(placeholder, text: $text)
                    .frame(height: 50)
                    .padding([.horizontal], 16)
                    .cornerRadius(16)
                    .overlay(RoundedRectangle(cornerRadius: 6)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.33, green: 0.3, blue: 0.3).opacity(0.14), lineWidth: 1)
                    )
            } else {
                TextField(placeholder, text: $text)
                    .frame(height: 44)
                    .padding([.horizontal], 16)
                    .cornerRadius(16)
                    .overlay(RoundedRectangle(cornerRadius: 6)
                        .inset(by: 0.5)
                        .stroke(Color(red: 0.33, green: 0.3, blue: 0.3).opacity(0.14), lineWidth: 1)
                    )
            }
        }
    }
}


#Preview(traits: .sizeThatFitsLayout) {
    TextFields(title: "Name", placeholder: "Name", isSecure: true)
}
