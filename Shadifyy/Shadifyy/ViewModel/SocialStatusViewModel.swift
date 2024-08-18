

import Foundation
import SwiftUI

// MaritalStatus ViewModel
class MaritalStatusViewModel: ObservableObject {
    @Published var selectedOption: MaritalStatus = .neverMarried
}

// Religion ViewModel
class ReligionViewModel: ObservableObject {
    @Published var selectedOption: Religion = .hindu
}

// Horoscope ViewModel
class HoroscopeViewModel: ObservableObject {
    @Published var selectedOption: Horoscope? = nil
}

// ManglikStatus ViewModel
class ManglikViewModel: ObservableObject {
    @Published var selectedOption: Manglik? = nil
}
