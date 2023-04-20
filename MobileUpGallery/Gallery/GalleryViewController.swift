//
//  GalleryViewController.swift
//  MobileUpGallery
//
//  Created by Дмитрий Дуров on 20.04.2023.
//

import UIKit

protocol GalleryViewInputProtocol: AnyObject {
    
}

protocol GalleryViewOutputProtocol {
    init(view: GalleryViewInputProtocol)
}

protocol GalleryViewControllerDelegate: AnyObject {
    
}

final class GalleryViewController: UIViewController {
    
    // MARK: - Public Properties
    
    var presenter: GalleryViewOutputProtocol?
    
    // MARK: - Private Properties
    
    private let configurator: GalleryConfigurationInputProtocol = GalleryConfigurator()
    private lazy var contentView = GalleryView(self)
    
    // MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(withView: self)
    }
    
    override func loadView() {
        super.loadView()
        view = contentView
    }
}

// MARK: - GalleryViewInputProtocol

extension GalleryViewController: GalleryViewInputProtocol {
    
}

// MARK: - GalleryViewControllerDelegate

extension GalleryViewController: GalleryViewControllerDelegate {
    
}

