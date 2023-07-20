//
//  reflectView.swift
//  handsOn
//
//  Created by Scholar on 7/19/23.
//

import SwiftUI

public class ProgressBarNum : ObservableObject {
    @Published var hours: CGFloat
    
    init(hours: CGFloat) {
        self.hours = hours
    }
}

struct reflectView: View {
    @State var hours: CGFloat = 0
    @State var goalHours: CGFloat = 5
    @State var goalHoursText = ""
    @State var postedTexts: [String] = [] // Store the posted texts here
    @State private var showingAlert = false
    @State private var isPosting: Bool = false // Add a state variable to track if the user is posting
    
    var body: some View {
        VStack {
            Text("REFLECT AND RATE")
                .font(.headline)
                .fontWeight(.bold)
            Text("Goal: \(Int(goalHours)) hours of volunteering")
            
            Button("Add an hour!") {
                goalHours += 1.0
            }
            .padding(.bottom)
            
            Text("Tracker:")
            
            HStack {
                Button("-") {
                    hours -= 1.0
                }
                Text("\(Int(hours)) hrs")
                Button("+") {
                    hours += 1.0
                }
            }
            
            var width: CGFloat = 200
            var height: CGFloat = 20
            // @State public var hours: CGFloat = 0
            @ObservedObject var barNum = ProgressBarNum(hours: 0)
            var color1 = Color(#colorLiteral(red: 0.9450980392, green: 0.3176470588, blue: 0.337254902, alpha: 1))
            var color2 = Color(#colorLiteral(red: 1, green: 0.7019607843, blue: 0.6941176471, alpha: 1))
            
            let multiplier = width / goalHours
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: height, style: .continuous)
                    .frame(width: width, height: height)
                    .foregroundColor(Color.black.opacity(0.1))
                
                RoundedRectangle(cornerRadius: height, style: .continuous)
                    .frame(width: hours * multiplier, height: height)
                    .foregroundColor(.clear) // Set the foreground color of the RoundedRectangle to clear
                    .background(
                        LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .leading, endPoint: .trailing)
                            .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                    )
            }
            .padding()
            
            // Pinkish text box above the Hello button
            TextField("Enter something here...", text: $goalHoursText)
                .padding()
                .background(Color(#colorLiteral(red: 1, green: 0.7019607843, blue: 0.6941176471, alpha: 1)))
                .cornerRadius(15)
                .padding()
            
            // Button for the "Hello" text, when tapped, it posts the text below the button
            Button(action: {
                if !goalHoursText.isEmpty {
                    postedTexts.append(goalHoursText)
                    goalHoursText = ""
                }
            }) {
                Text("Submit")
                    .font(.headline)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .foregroundColor(.white)
                    .background(
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color(#colorLiteral(red: 1, green: 0.7019607843, blue: 0.6941176471, alpha: 1))) // Adjust the background color here
                    )
            }
            
            Spacer()
            
            // List to display all the posted texts
            List(postedTexts, id: \.self) { text in
                Text(text)
                    .padding()
                    .foregroundColor(.black)
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color(#colorLiteral(red: 1, green: 0.7019607843, blue: 0.6941176471, alpha: 1))) // Adjust the background color here
                    )
                    .padding()
            }
        }
    }
}

struct ParentView: View {
    @StateObject var barNum = ProgressBarNum(hours: 50)
    
    var body: some View {
        reflectView()
    }
}

struct reflectView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
