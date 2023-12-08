//
//  ChatData.swift
//  SwiftUI-Basics
//
//  Created by user on 12/7/23.
//

import Foundation

struct Chat: Identifiable {
    var id = UUID()
    var profileImage: String
    var name: String
    var lastMessage: String
    var time: String
}

let chats = [
    Chat(profileImage: "profile", name: "Nana", lastMessage: "მარიამ, ჩართე კამერა", time: "18:20"),
    Chat(profileImage: "profile", name: "Johnny Depp", lastMessage: "ძალიან ლამაზი ხარ", time: "17:14"),
    Chat(profileImage: "profile", name: "დედა", lastMessage: "მარიამ სად ხარ?", time: "05/12/2023"),
    Chat(profileImage: "profile", name: "Nala Kipiani", lastMessage: "მალე ჩამოდი!", time: "Yesterday"),
    Chat(profileImage: "profile", name: "Nicolas Bourbaki", lastMessage: "KFC tommorrow?", time: "Wednesday"),
    Chat(profileImage: "profile", name: "Ana Tinikashvili", lastMessage: "FOP-ში რა მიიღე?", time: "Friday"),
    Chat(profileImage: "profile", name: "Meri Abashidze", lastMessage: "ლიფტში გავიჭედე", time: "01/12/2023"),
    Chat(profileImage: "profile", name: "Misho Ulimito", lastMessage: "Princess", time: "Tuesday"),
    Chat(profileImage: "profile", name: "Me", lastMessage: "File Sent", time: "12/11/2023"),
    Chat(profileImage: "profile", name: "Daniel Kipiani", lastMessage: "ნახე ახალი ლეგო მაქვს", time: "03/11/2023"),
    Chat(profileImage: "profile", name: "Magticom", lastMessage: "თქვენს ანგარიშზე თანხა ამოიწურა", time: "01/11/2023")
]
