//
//  unionRescueMission.swift
//  handsOn
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct unionRescueMission: View {
    @State private var isInformationSelected = true
    @State private var rating = 0
    let maximumRating = 5
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Union Rescue Mission")
                .font(.title2)
                .fontWeight(.black)
            .multilineTextAlignment(.leading)
            VStack {
                Image("UnionRescueMission")
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
                    Text(isInformationSelected ? "Union Rescue Mission focuses on helping and guiding homeless men women and children to a better life, giving them hope and healing.\n\nLocation: 545 San Pedro St, Los Angeles, CA 90013\n\nTime: Open 24 hours\n\nPhone Number: (213) 347-6300\n\nWebsite:  https://urm.org/get-involved/volunteer/"
                        : "Some volunteers must be ages 14 and up. Other volunteers must be ages 18 and up.")
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

struct unionRescueMission_Previews: PreviewProvider {
    static var previews: some View {
        unionRescueMission()
    }
}
