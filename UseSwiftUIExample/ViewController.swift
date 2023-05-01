//
//  ViewController.swift
//  UseSwiftUIExample
//
//  Created by eyup cimen on 1.05.2023.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    private var mySwiftUIView: MySwiftUIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        mySwiftUIView = MySwiftUIView()
        addSUIView()
    }

    private func addSUIView() {
        guard let mySwiftUIView = mySwiftUIView else {
            return
        }
        addSubSwiftUIView(mySwiftUIView, to: view)
    }
}

extension UIViewController {
    @discardableResult
    func addSubSwiftUIView<Content>(_ swiftUIView: Content, to view: UIView) -> UIHostingController<Content> where Content: View {
        let hostingController = UIHostingController(rootView: swiftUIView)
        addChild(hostingController)
        view.addSubview(hostingController.view)
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            hostingController.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostingController.view.leftAnchor.constraint(equalTo: view.leftAnchor),
            view.bottomAnchor.constraint(equalTo: hostingController.view.bottomAnchor),
            view.rightAnchor.constraint(equalTo: hostingController.view.rightAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
        hostingController.didMove(toParent: self)
        return hostingController
    }
}
