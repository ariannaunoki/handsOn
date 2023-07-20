//
//  starRatingView.swift
//  handsOn
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct starRatingView: View {

    @Binding var rating: Int
    let maximumRating: Int
    var offImage: Image?
    var onImage = Image(systemName: "star.fill")
    var offColor = Color.gray
    var onColor = Color.pink

    func image(for index: Int) -> Image {
        if index >= rating {
            return offImage ?? onImage
        } else {
            return onImage
        }
    }
    
    var body: some View {
        HStack {
            ForEach(Array(1..<maximumRating + 1), id: \.self) { index in
                image(for: index)
                    .foregroundColor(index > rating ? offColor : onColor)
                    .onTapGesture {
                        self.rating = index
                    }
            }
        }
    }
}
