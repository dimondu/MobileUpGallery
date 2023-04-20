//
//  GalleryCoordinator.swift
//  MobileUpGallery
//
//  Created by Дмитрий Дуров on 20.04.2023.
//

import Foundation

protocol GalleryConfigurationInputProtocol {
    func configure(withView view: GalleryViewController)
}

final class GalleryConfigurator: GalleryConfigurationInputProtocol {
    
    // MARK: - Public Methods
    
    func configure(withView view: GalleryViewController) {
        let presenter = GalleryPresenter(view: view)
        let interactor = GalleryInteractor(presenter: presenter)
        let router = GalleryRouter(view: view)
        
        view.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}
