//
//  ViewController.swift
//  Componenets
//
//  Created by Eficens on 31/01/23.
//

import UIKit

class ViewController: UIViewController {

    let label = UILabel()
    let textField = UITextField()
    let button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    func setupUI() {
        view.backgroundColor = .white

        label.text = "Enter your name:"
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)

        textField.borderStyle = .roundedRect
        textField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textField)

        button.setTitle("Submit", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(submitTapped), for: .touchUpInside)
        view.addSubview(button)

        let constraints = [
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),

            textField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 8),
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),

            button.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 16),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
        ]
        NSLayoutConstraint.activate(constraints)
    }

    @objc func submitTapped() {
        if let name = textField.text, !name.isEmpty {
            print("Hello, \(name)")
        } else {
            print("Please enter a name")
        }
    }
}
