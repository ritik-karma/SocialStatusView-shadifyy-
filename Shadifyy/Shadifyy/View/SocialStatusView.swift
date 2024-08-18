import SwiftUI

struct SocialStatusView: View {
    
    @State private var motherTongue: String = ""
    @State private var caste: String = ""
    
    @StateObject var maritalStatusViewModel = MaritalStatusViewModel()
    @StateObject var religionViewModel = ReligionViewModel()
    @StateObject var horoscopeViewModel = HoroscopeViewModel()
    @StateObject var manglikViewModel = ManglikViewModel()
    
    var body: some View {
        Text("Share your social status📱")
            .font(Font.custom("KumbhSans", size: 24))
            .fontWeight(.semibold)
        
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                //MARK:  Marital Status Section
                VStack(alignment: .leading) {
                    Text("Marital Status")
                        .font(Font.custom("KumbhSans", size: 14))
                        .fontWeight(.medium)
                        .foregroundColor(Color.black.opacity(0.50))
                    
                    
                    // Marital Status Buttons
                    VStack(alignment: .leading, spacing: 10){
                        HStack(spacing: 10){
                            ForEach([MaritalStatus.neverMarried, MaritalStatus.awaitingDivorce] , id: \.self) { option in
                                meritalStatusButton(for: option)
                                
                                .padding(.bottom, 5)
                            }
                        }
                        HStack(spacing: 10){
                            ForEach([MaritalStatus.divorced, MaritalStatus.married, MaritalStatus.widowed] , id: \.self) { option in
                                meritalStatusButton(for: option)
                                
                                .padding(.bottom, 5)
                            }
                        }
                        HStack(spacing: 10){
                            ForEach([MaritalStatus.annulled] , id: \.self) { option in
                                meritalStatusButton(for: option)
                                
                                .padding(.bottom, 5)
                            }
                        }
                    }
                    .padding(.top)
                }
                .padding()
                
                TextField("Mother Tongue", text: $motherTongue)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal)
                   

                //MARK: Religion Section
                VStack(alignment: .leading) {
                    Text("Religion")
                        .font(Font.custom("KumbhSans", size: 14))
                        .fontWeight(.medium)
                        .foregroundColor(Color.black.opacity(0.50))
                    
                    
                    // Religion Section Buttons
                    VStack(alignment: .leading, spacing: 10){
                        
                        HStack(spacing: 10){
                            ForEach([Religion.hindu,
                                     Religion.muslim,
                                     Religion.sikh,
                                     Religion.christian], id: \.self) { option in
                                religionStatusButton(for: option)
                                .padding(.bottom, 5)
                            }
                        }
                        HStack(spacing: 10){
                            ForEach([Religion.buddhist,
                                     Religion.jain,
                                     Religion.parsi,
                                     Religion.jewish], id: \.self) { option in
                                religionStatusButton(for: option)
                                .padding(.bottom, 5)
                            }
                        }
                        HStack(spacing: 10){
                            ForEach([Religion.bahai,
                                     Religion.atheist,
                                     ], id: \.self) { option in
                                religionStatusButton(for: option)                                .padding(.bottom, 5)
                            }
                        }
                    }
                    .padding(.top)
                }
                .padding()
                
                TextField("Caste", text: $caste)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(8)
                    .padding(.horizontal)


                //MARK:  Horoscope Section
                VStack(alignment: .leading) {
                    Text("Horoscope (Optional)")
                        .font(Font.custom("KumbhSans", size: 14))
                        .fontWeight(.medium)
                        .foregroundColor(Color.black.opacity(0.50))
                    
                    // Horoscope Section Buttons
                    VStack(alignment: .leading, spacing: 10){
                        HStack(spacing: 10){
                            ForEach(Horoscope.allCases, id: \.self) { option in
                                horoscopeStatusButton(for: option)                                .padding(.bottom, 5)
                            }
                        }
                    }
                    .padding(.top)
                }
                .padding()

                //MARK: Manglik Section
                VStack(alignment: .leading) {
                    Text("Manglik (Optional)")
                        .font(Font.custom("KumbhSans", size: 14))
                        .fontWeight(.medium)
                        .foregroundColor(Color.black.opacity(0.50))
                    
                    //Manglik section Buttons
                    VStack(alignment: .leading, spacing: 10){
                        
                        HStack(spacing: 10){
                            ForEach([Manglik.manglik, Manglik.nonManglik], id: \.self) { option in
                                manglikStatusButton(for: option)
                                    .padding(.bottom, 5)
                            }
                        }
                        HStack(spacing: 10){
                            ForEach([Manglik.angshik], id: \.self) { option in
                                manglikStatusButton(for: option)
                                .padding(.bottom, 5)
                            }
                        }
                        
                        
                    }
                    .padding(.top)
                }
                .padding()
                
              
            }
            Button(action: {
                // Action for next button
            }) {
                Text("Now, Lets find one for you")
                    .fontWeight(.semibold)
                    .frame(width: 283, height: 55)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .padding(.horizontal, 40)
            }

            
        }
        .scrollIndicators(.hidden)
        
    }
    
    
    // Social Status button views
    @ViewBuilder
    private func meritalStatusButton(for option: MaritalStatus) -> some View {
        Button(action: {
            maritalStatusViewModel.selectedOption = option
        }) {
            Text(option.rawValue)
                .font(Font.custom("KumbhSans", size: 14))
                .fontWeight(.medium)
                .foregroundColor(Color.black.opacity(0.50))
                .frame(width: buttonWidth(for: option), height: 35)
                .background(Color.white)
                .cornerRadius(50)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .inset(by: 1)
                        .stroke(
                            maritalStatusViewModel.selectedOption == option ? Color.red : Color.gray,
                            lineWidth: 1
                        )
                )
        }
    }
    
    @ViewBuilder
    private func religionStatusButton(for option: Religion) -> some View {
        Button(action: {
            religionViewModel.selectedOption = option
        }) {
            Text(option.rawValue)
                .font(Font.custom("KumbhSans", size: 14))
                .fontWeight(.medium)
                .foregroundColor(Color.black.opacity(0.50))
                .frame(width: buttonWidth(for: option), height: 35)
                .background(Color.white)
                .cornerRadius(50)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .inset(by: 1)
                        .stroke(
                            religionViewModel.selectedOption == option ? Color.red : Color.gray,
                            lineWidth: 1
                        )
                )
        }
    }
    
    @ViewBuilder
    private func horoscopeStatusButton(for option: Horoscope) -> some View {
        Button(action: {
            horoscopeViewModel.selectedOption = option
        }) {
            Text(option.rawValue)
                .font(Font.custom("KumbhSans", size: 14))
                .fontWeight(.medium)
                .foregroundColor(Color.black.opacity(0.50))
                .frame(width: buttonWidth(for: option), height: 35)
                .background(Color.white)
                .cornerRadius(50)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .inset(by: 1)
                        .stroke(
                            horoscopeViewModel.selectedOption == option ? Color.red : Color.gray,
                            lineWidth: 1
                        )
                )
        }
    }

    @ViewBuilder
    private func manglikStatusButton(for option: Manglik) -> some View {
        Button(action: {
            manglikViewModel.selectedOption = option
        }) {
            Text(option.rawValue)
                .font(Font.custom("KumbhSans", size: 14))
                .fontWeight(.medium)
                .foregroundColor(Color.black.opacity(0.50))
                .frame(width: buttonWidth(for: option), height: 35)
                .background(Color.white)
                .cornerRadius(50)
                .overlay(
                    RoundedRectangle(cornerRadius: 50)
                        .inset(by: 1)
                        .stroke(
                            manglikViewModel.selectedOption == option ? Color.red : Color.gray,
                            lineWidth: 1
                        )
                )
        }
    }

    
    
    // Calculate button width based on the option (customize as needed)
    private func buttonWidth(for option: MaritalStatus) -> CGFloat {
        switch option {
        case .neverMarried, .awaitingDivorce:
            return 150
        case .divorced, .married, .widowed, .annulled:
            return 100
        }
    }
    
    private func buttonWidth(for option: Religion) -> CGFloat {
        switch option {
        case .hindu, .muslim, .sikh:
            return 80
        case .christian, .buddhist, .jain:
            return 90
        default:
            return 80
        }
    }
    
    private func buttonWidth(for option: Horoscope) -> CGFloat {
        switch option {
        case .mustMatch, .notRequired:
            return 130
        }
    }
    
    private func buttonWidth(for option: Manglik) -> CGFloat {
        switch option {
        case .manglik, .nonManglik:
            return 150
        case .angshik:
            return 250
        }
    }
}



#Preview {
    SocialStatusView()
}
