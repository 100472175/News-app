//
//  SideMenuViewModel.swift
//  Barra-News
//
//  Created by Eduardo Alarcon on 7/3/23.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case list
    case bookstore
    case messages
    case notifications
    case logout
    
    var order: Int{
        switch self {
        case .profile: return 0
        case .list: return 1
        case .bookstore: return 2
        case .messages: return 3
        case .notifications: return 4
        case .logout: return 5
        }
    }
    
    var title: String{
        switch self {
        case .profile: return "Profile"
        case .list: return "Lists"
        case .bookstore: return "Bookstore"
        case .messages: return "Messages"
        case .notifications: return "Notifications"
        case .logout: return "Logout"
        }
    }
    
    var imageName: String{
        switch self {
        case .profile: return "person"
        case .list: return "list.bullet"
        case .bookstore: return "bookmark"
        case .messages: return "bubble.left"
        case .notifications: return "bell"
        case .logout: return "arrow.left.square"
        }
    }
}
