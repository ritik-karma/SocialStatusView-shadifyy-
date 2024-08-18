//
//  SocialStatusOption.swift
//  Shadifyy
//
//  Created by Ritik Karma on 27/05/1946.
//

import Foundation

enum MaritalStatus: String, CaseIterable {
    case neverMarried = "Never Married"
    case awaitingDivorce = "Awaiting Divorce"
    case divorced = "Divorced"
    case married = "Married"
    case widowed = "Widowed"
    case annulled = "Annulled"
}

enum Religion: String, CaseIterable {
    case hindu = "Hindu"
    case muslim = "Muslim"
    case sikh = "Sikh"
    case christian = "Christian"
    case buddhist = "Buddhist"
    case jain = "Jain"
    case parsi = "Parsi"
    case jewish = "Jewish"
    case bahai = "Bahai"
    case atheist = "Atheist"
}

enum Horoscope: String, CaseIterable {
    case mustMatch = "Must Match"
    case notRequired = "Not Required"
}

enum Manglik: String, CaseIterable {
    case manglik = "Manglik"
    case nonManglik = "Non Manglik"
    case angshik = "Angshik (Partial Manglik)"
}
