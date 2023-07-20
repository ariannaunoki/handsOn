//
//  womenCenterView.swift
//  handsOn
//
//  Created by Scholar on 7/20/23.
//

import SwiftUI

struct womenCenterView: View {
    @State private var isInformationSelected = true
    @State private var rating = 0
    let maximumRating = 5
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Downtown Women's Center")
                .font(.title2)
                .fontWeight(.black)
                .multilineTextAlignment(.leading)
            VStack {
                Image("dwc")
                    .resizable()
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
                    Text(isInformationSelected ? "The Downtown Women's Center has a mission to end homelessness for women in Los Angeles, through housing, wellness, employment, and advocacy.\n\nLocation: 422 San Pedro St, Los Angeles, CA 90013 \n\nTime: 8AM - 3PM\n\nPhone Number: (213) 680-0600\n\nWebsite: www.mdowntownwomenscenter.org/volunteer/"
                         : "All volunteers must be over the age of 18 years old to do on-site volunteer opportunities.  .\n\nVolunteers can either come individualy or in groups.\n There are both on-site and off-site volunteer opportunities.")
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
    struct womenCenterView_Previews: PreviewProvider {
        static var previews: some View {
            womenCenterView()
        }
    }
}
