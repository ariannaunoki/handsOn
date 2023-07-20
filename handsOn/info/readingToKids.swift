//
//  readingToKids.swift
//  handsOn
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct readingToKids: View {
    @State private var isInformationSelected = true
    @State private var rating = 0
    let maximumRating = 5
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Reading to kids")
                .font(.title2)
                .fontWeight(.black)
            .multilineTextAlignment(.leading)
            VStack {
                Image("readingToKids")
            }
            .padding()
            Text("Use the toggle below to learn more information about this volunteer experience and any requirements to participate!")
                .multilineTextAlignment(.center)
                .padding()
                .border(Color(red: 255/255, green: 204/255, blue:204/255),width: 5)
            HStack(spacing: 0) {
                Button(action: {
                    isInformationSelected = true
                }) {
                    Text("Information")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(isInformationSelected ? Color.pink : Color(red: 255/255, green: 204/255, blue: 204/255))
                        )
                }
                Button(action: {
                    isInformationSelected = false
                }) {
                    Text("Requirements")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(!isInformationSelected ? Color.pink : Color(red: 255/255, green: 204/255, blue: 204/255))
                        )
                }
            }
            ScrollView {
                VStack {
                    Text(isInformationSelected ? "Reading to kids focuses on inspire kids through reading and enriching their lives and future success.\n\nLocation: 1600 Sawtelle Blvd, Los Angeles, CA 90025\n\nTime: Open 9am - 12pm (always the second Saturday of the month).\n\nPhone Number:  (310) 479-7455\n\nWebsite: https://www.readingtokids.org/main/main.php"
                        : "Volunteers must be at least 18 years old.")
                        .padding()
                        .foregroundColor(.black)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.gray, lineWidth: 1)
                        )
                        .multilineTextAlignment(.center)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .background(Color(red: 255/255, green: 204/255, blue: 204/255))
            }
            HStack {
                Text("Next, leave a review!")
                    .multilineTextAlignment(.center)
                    .padding()
                    .border(Color(red: 255/255, green: 204/255, blue:204/255),width: 5)
                    .padding()
                starRatingView(rating: $rating, maximumRating: maximumRating)
                Text("\(rating)/\(maximumRating)")
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding()
            }
        }
    }
}

struct readingToKids_Previews: PreviewProvider {
    static var previews: some View {
        readingToKids()
    }
}
