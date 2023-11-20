//
//  GitView.swift
//  Rekrut
//
//  Created by Jakub Chodara on 19.11.2023.
//

import SwiftUI

struct GitView: View {
    var body: some View {
        WebView(url: URL(string: "https://github.com/ku6a-cj")!)
    }
}

struct GitView_Previews: PreviewProvider {
    static var previews: some View {
        GitView()
    }
}
