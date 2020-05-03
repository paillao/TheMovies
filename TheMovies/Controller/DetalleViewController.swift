//
//  DetalleViewController.swift
//  TheMovies
//
//  Created by Jorge Paillao on 7/11/19.
//  Copyright © 2019 Jorge Paillao. All rights reserved.
//

import UIKit
import SDWebImage

class DetalleViewController: UIViewController {
    
    var result: Result?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBarButtonItems()
        view.backgroundColor = .white
        navigationItem.title = self.result?.title
        setupDetalles()
    }
    
    fileprivate func setupBarButtonItems(){
        let volverButton:UIBarButtonItem = UIBarButtonItem(title: "Volver", style: .plain, target: self, action: #selector(self.Volver))
        
        navigationItem.leftBarButtonItem = volverButton
        volverButton.tintColor = AppColors.blue
    }
    @objc func Volver(){
        dismiss(animated: true, completion: nil)
    }
    
    fileprivate func setupDetalles(){
       
        let rate = UILabel()
        rate.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        rate.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        rate.text = "Rating: \(String(describing: self.result!.vote_average))"
        rate.textAlignment = .center
        
        let popularidad = UILabel()
        popularidad.widthAnchor.constraint(equalToConstant: self.view.frame.width).isActive = true
        popularidad.heightAnchor.constraint(equalToConstant: 20.0).isActive = true
        popularidad.text = "Popularidad: \(String(describing: self.result!.popularity))"
        popularidad.textAlignment = .center
    
        let poster = UIImageView()
        poster.backgroundColor = .blue
        poster.heightAnchor.constraint(equalToConstant: 420).isActive = true
        poster.widthAnchor.constraint(equalToConstant: 280).isActive = true
        let url = URL(string: "https://image.tmdb.org/t/p/w500\(self.result!.poster_path)")
        poster.sd_setImage(with: url)
        
        let overview = UILabel()
        overview.numberOfLines = 30
        overview.lineBreakMode = .byWordWrapping
        overview.sizeToFit()
        overview.textAlignment = .justified
        overview.widthAnchor.constraint(equalToConstant: 280).isActive = true
        overview.text = self.result?.overview
        
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.spacing = 16
        stackView.layoutMargins = UIEdgeInsets(top: 0, left: 20, bottom: 20, right: 20)
        stackView.isLayoutMarginsRelativeArrangement = true
        
        stackView.addArrangedSubview(poster)
        stackView.addArrangedSubview(rate)
        stackView.addArrangedSubview(popularidad)
        stackView.addArrangedSubview(overview)
        stackView.translatesAutoresizingMaskIntoConstraints = false;
        
        self.view.addSubview(stackView)
        
        stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
    }
}
