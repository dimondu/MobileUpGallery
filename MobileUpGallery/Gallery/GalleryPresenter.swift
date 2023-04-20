//
//  GalleryPresenter.swift
//  MobileUpGallery
//
//  Created by Дмитрий Дуров on 20.04.2023.
//

import Foundation

final class GalleryPresenter: GalleryViewOutputProtocol {
    
    // MARK: - Public Properties
    
    var interactor: GalleryInteractorInputProtocol?
    var router: GalleryRouterInputProtocol?
    
    // MARK: - Private Properties
    
    private weak var view: GalleryViewInputProtocol?
    
    // MARK: - Initializers
    
    init(view: GalleryViewInputProtocol) {
        self.view = view
    }
}

// MARK: - GalleryInteractorOutputProtocol

extension GalleryPresenter: GalleryInteractorOutputProtocol {
    
}
