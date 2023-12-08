//
//  SecondPage.swift
//  SwiftUI-Basics
//
//  Created by user on 12/6/23.
//

import SwiftUI

struct SecondPage: View {
    @State private var chatData = chats

    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()

            VStack(spacing: 12) {
                Text("Messages")
                    .font(.system(size: 17, weight: .semibold))
                    .foregroundColor(.white)
                    .padding(.bottom, 23)
                    .padding(.top, 10)

                if chatData.isEmpty {
                    Spacer()

                    VStack(spacing: 20) {
                        Image(systemName: "message.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(.gray)

                        Text("Chat is empty")
                            .foregroundColor(.gray)
                            .font(.title)
                    }

                    Spacer()
                } else {
                    ScrollView {
                        LazyVStack(spacing: 0) {
                            ForEach(chatData) { chat in
                                RowStackView(rowData: chat)
                            }
                        }
                    }
                }

                Button(action: {
                    chatData.removeAll()
                }, label: {
                    ActionButton(title: "Clear Chat")
                })
                .padding(.top, 25)
            }
        }
     
    }
}

struct SecondPage_Previews: PreviewProvider {
    static var previews: some View {
        SecondPage()
    }
}
