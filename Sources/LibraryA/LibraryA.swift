//
//  LibraryA.swift
//  
//
//  Created by Daniel Romero on 10/5/21.
//

import SwiftUI
import LibraryB

public struct MyView: View {

    public init() {}

    public var body: some View {
        VStack {
            Text("The Image")
            /* Uncomment the below line to get a preview */
//            Image(systemName: "circle.fill")
            Image(uiImage: Images.myImage) // This causes the preview to crash
        }
    }

}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}
