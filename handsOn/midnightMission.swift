//
//  midnightMission.swift
//  handsOn
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct midnightMission: View {
    @State private var isInformationSelected = true
    @State private var rating = 0
    let maximumRating = 5
    
    var body: some View {
        VStack(spacing: 10) {
            Text("The Midnight Mission")
                .font(.title2)
                .fontWeight(.black)
            .multilineTextAlignment(.leading)
            VStack {
                Image("mm")
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
                    Text(isInformationSelected ? "The Midnight Mission focuses on helping out homeless men, women and children through providing basic necessities and offer a 'bridge to self-sufficiency'.\n\nLocation: 601 San Pedro St, Los Angeles, CA 90014\n\nTime: Open 24 hours\n\nPhone Number: (213) 624-9258\n\nWebsite: www.midnightmission.org/get-involved/volunteer/"
                        : "Volunteers under the age of 18 must be over 4.5 feet tall, and must be accompanied by someone over the age of 18. All volunteers must be fully vaccinated against Covid-19, and must have their vaccination card and ID (Digital QR codes accepted).\n\nMasks are required on site, and all volunteers will be rapid tested upon check in.\n\nPlease arrive 15 minutes early to your volunteer shift.")
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
struct midnightMission_: PreviewProvider {
    static var previews: some View {
        midnightMission()
    }
}
