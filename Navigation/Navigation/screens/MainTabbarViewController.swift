//
//  MainTabbarViewController.swift
//  Navigation
//
//  Created by rendi on 10.04.2024.
//

import UIKit

class MainTabbarViewController: UITabBarController {
    
    enum Tab {
        case phone
        case message
        case star
        
        var title: String {
            switch self {
            case .phone: return "Phone"
            case .message: return "Message"
            case .star: return "Star"
            }
        }
        
        var imageName: String {
            switch self {
            case .phone: return "phone.fill"
            case .message: return "message.fill"
            case .star: return "star.fill"
            }
        }
        
        var rootViewController: UIViewController {
            switch self {
            case .phone: return WhiteViewController()
            case .message: return BrownViewController()
            case .star: return BlackViewController()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tabBar.backgroundColor = .yellow
        setupTabBar()
    }
    
    func setupTabBar() {
        let tabs: [Tab] = [.phone, .message, .star]
        let viewControllers = tabs.map { createNavigationController(tab: $0) }
        self.viewControllers = viewControllers
    }
    
    func createNavigationController(tab: Tab) -> UINavigationController {
        let navController = UINavigationController(rootViewController: tab.rootViewController)
        navController.tabBarItem.title = tab.title
        navController.tabBarItem.image = UIImage(systemName: tab.imageName)
        return navController
    }
}

