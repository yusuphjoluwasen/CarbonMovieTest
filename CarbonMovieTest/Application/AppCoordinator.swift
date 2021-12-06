//
//  AppCoordinator.swift
//  CarbonMovieTest
//
//  Created by Guru on 05/12/2021.
//

import UIKit

final class AppCoordinator {
    private let session = Session()
    private let detailViewModel = DiscoverDetailViewModel()
    private let window: UIWindow
    private var navigationController: UINavigationController?

    init(window: UIWindow) {
        self.window = window
    }

    func start() {
        let viewController = DiscoverViewController(viewModel: .init(session: session), coordinator: self)
        navigationController = UINavigationController(rootViewController: viewController)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
    //Move to movie detail view controller
    func moveToMovieDetail(viewModel:DiscoverViewModel){
        let detailViewModel = DiscoverDetailViewModel()
        let nav = DiscoverDetailViewController(viewModel: detailViewModel)
        viewModel.detaildelegate = nav
        navigationController?.pushViewController(nav, animated: true)
    }
}
