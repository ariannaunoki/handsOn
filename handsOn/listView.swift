import SwiftUI

struct listView: View {
    @State private var inSearchBar = ""
    @State private var searchedText = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Find your place")
                    .font(.title)
                    .fontWeight(.black)
                
                Spacer()
                
                HStack {
                    TextField("Search", text: $inSearchBar)
                        .multilineTextAlignment(.center)
                        .font(.title)
                        .font(.custom("Times New Roman", size: 16))
                        .padding()
                        .background(Color(red: 255/255, green: 179/255, blue: 177/255))
                        .foregroundColor(.white)
                        .cornerRadius(30)
                        .padding()
                    
                    Button("🔍") {
                        searchedText = inSearchBar
                    }
                    .font(.system(size: 40))
                    .padding()
                }
                
                ScrollView {
                    if searchedText == "" {
                        VStack {
                            Divider()
                            VStack {
                                HStack {
                                    Image("dwcc")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height: 100, alignment: .leading)
                                        .border(Color.pink, width: 1)
                                    Text("Downtown Women's Center, 422 San Pedro St, Los Angeles, CA 90013")
                                }
                                .padding()
                                
                                NavigationLink(destination: womenCenterView()) {
                                    Text("Learn More")
                                }
                                .foregroundColor(Color.pink)
                            }
                        }
                        Divider()
                        VStack {
                            HStack {
                                Image("Mid")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100, alignment: .leading)
                                    .border(Color.pink, width: 1)
                                Text("The Midnight Mission, 601 San Pedro St, Los Angeles, CA 90014")
                            }
                            NavigationLink(destination: midnightMission()) {
                                Text("Learn More")
                            }
                            .foregroundColor(Color.pink)
                            Divider()
                        }
                        .padding()
                        
                        VStack {
                            HStack {
                                Image("Kids")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100, alignment: .leading)
                                    .border(Color.pink, width: 1)
                                Text("Reading to Kids, 1600 Sawtelle Blvd, Los Angeles, CA 90025")
                            }
                            .padding()
                        }
                        NavigationLink(destination: readingToKids()) {
                            Text("Learn more")
                        }
                        .foregroundColor(Color.pink)
                        
                        Divider()
                        VStack {
                            HStack {
                                Image("Union")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100, alignment: .leading)
                                    .border(Color.pink, width: 1)
                                Text("Union Rescue Mission, 545 San Pedro St, Los Angeles, CA 90013")
                            }
                            .padding()
                            NavigationLink(destination: unionRescueMission()) {
                                Text("Learn More")
                            }
                        }
                    }
                    else if searchedText == "Mission" {
                        VStack {
                            Divider()
                            VStack {
                                HStack {
                                    Image("Mid")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height: 100, alignment: .leading)
                                        .border(Color.pink, width: 1)
                                    Text("The Midnight Mission, 601 San Pedro St, Los Angeles, CA 90014")
                                }
                                Button("Learn More") {
                                    // connect to juli's page!!!!
                                }
                                .foregroundColor(Color.pink)
                                Divider()
                            }
                            .padding()
                            HStack {
                                Image("Union")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100, alignment: .leading)
                                    .border(Color.pink, width: 1)
                                Text("Union Rescue Mission, 545 San Pedro St, Los Angeles, CA 90013")
                            }
                            .padding()
                            Button("Learn More") {
                                // connect to juli's page!!!!
                            }
                            .foregroundColor(Color.pink)
                        }
                    }
                    else if searchedText == "Food" || searchedText == "The Midnight Mission" || searchedText == "Food Bank" {
                        VStack {
                            Divider()
                            VStack {
                                HStack {
                                    Image("Mid")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height: 100, alignment: .leading)
                                        .border(Color.pink, width: 1)
                                    Text("The Midnight Mission, 601 San Pedro St, Los Angeles, CA 90014")
                                }
                                Button("Learn More") {
                                    // connect to juli's page!!!!
                                }
                                .foregroundColor(Color.pink)
                                Divider()
                            }
                            .padding()
                        }
                    }
                    else if searchedText == "Downtown Women's Center" || searchedText == "Women" || searchedText == "Downtown" {
                        VStack {
                            HStack {
                                Image("DWC")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100, alignment: .leading)
                                    .border(Color.pink, width: 1)
                                Text("Downtown Women's Center, 422 San Pedro St, Los Angeles, CA 90013")
                            }
                            .padding()
                            Button("Learn More") {
                                // connect to juli's page!!!!
                            }
                            .foregroundColor(Color.pink)
                        }
                    }
                    else if searchedText == "Reading to Kids" || searchedText == "Kids" || searchedText == "Reading" {
                        VStack {
                            HStack {
                                Image("Kids")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100, alignment: .leading)
                                    .border(Color.pink, width: 1)
                                Text("Reading to Kids, 1600 Sawtelle Blvd, Los Angeles, CA 90025")
                            }
                            .padding()
                            Button("Learn More") {
                                // connect to juli's page!!!!
                            }
                            .foregroundColor(Color.pink)
                        }
                    }
                    else if searchedText == "Union Rescue Mission" || searchedText == "Rescue Mission" || searchedText == "Homeless Shelter" {
                        VStack {
                            HStack {
                                Image("Union")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 100, height: 100, alignment: .leading)
                                    .border(Color.pink, width: 1)
                                Text("Union Rescue Mission, 545 San Pedro St, Los Angeles, CA 90013")
                            }
                            .padding()
                            Button("Learn More") {
                                // connect to juli's page!!!!
                            }
                            .foregroundColor(Color.pink)
                            Divider()
                        }
                    }
                }
            }
        }
    }
        
        struct listView_Previews: PreviewProvider {
            static var previews: some View {
                listView()
            }
        }
    }

