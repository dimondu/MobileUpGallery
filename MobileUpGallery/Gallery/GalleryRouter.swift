//
//  GalleryRouter.swift
//  MobileUpGallery
//
//  Created by Дмитрий Дуров on 20.04.2023.
//

import Foundation

protocol GalleryRouterInputProtocol {
    init(view: GalleryViewController)
}

final class GalleryRouter: GalleryRouterInputProtocol {
    
    // MARK: - Private Properties
    
    private weak var view: GalleryViewController?
    
    // MARK: - Initializers
    
    init(view: GalleryViewController) {
        self.view = view
    }
}
