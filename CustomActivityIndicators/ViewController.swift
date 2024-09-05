//
//  ViewController.swift
//  CustomActivityIndicators
//
//  Created by Praveen Kumar on 05/09/24.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
    
    let rotatingCirclesView = RotatingCirclesView()

    override func viewDidLoad() {
        super.viewDidLoad()
        configuratinLoader()
        let tap =  UITapGestureRecognizer(target: self, action: #selector(self.viewTaped))
        view.addGestureRecognizer(tap)
    }
    private func configuratinLoader(){
        view.addSubview(rotatingCirclesView)
        NSLayoutConstraint.activate([
            rotatingCirclesView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            rotatingCirclesView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            rotatingCirclesView.heightAnchor.constraint(equalToConstant: 100),
            rotatingCirclesView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    @objc func viewTaped(){
        rotatingCirclesView.animate(rotatingCirclesView.circle1, counter: 1)
        rotatingCirclesView.animate(rotatingCirclesView.circle2, counter: 3)
    }
}

