//
//  MySwiftUIView.swift
//  UseSwiftUIExample
//
//  Created by eyup cimen on 1.05.2023.
//

import SwiftUI

struct MySwiftUIView: View {
    var body: some View {
        ZStack {
            Color.green.opacity(0.3)
                .ignoresSafeArea()
            Text("Hello, World!")
                .font(.title)
        }
    }
}

struct MySwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        MySwiftUIView()
    }
}
