//
//  ActionButton.swift
//  SwiftUI-Basics
//
//  Created by user on 12/7/23.
//

import SwiftUI

struct ActionButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .frame(width: 220,height: 45)
            .background(Color(.blue))
            .foregroundStyle(.white)
            .font(.system(size: 20, weight: .medium, design: .default))
            .clipShape(RoundedRectangle(cornerRadius: 6))
    }
}
