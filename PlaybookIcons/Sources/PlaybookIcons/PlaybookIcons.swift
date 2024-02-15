// The Swift Programming Language
// https://docs.swift.org/swift-book

import SwiftUI

struct PBIcons: View {
  let adaptiveColumn = [GridItem(.adaptive(minimum: 64))]
  var body: some View {
    VStack {
      ScrollView {
        LazyVGrid(columns: adaptiveColumn, spacing: 20) {
          ForEach(Icons.allCases) { icon in
            icon.image
          }
        }
      }
    }
    .padding()
  }
}

public enum Icons: String, CaseIterable, Identifiable {
  case accessories
  case bars
  case calendar
  case check
  case chevronDown = "chevron-down"
  case connectLogo = "connect-logo"
  case connectTypeface = "connect-typeface"
  case doors
  case edit
  case estimatePhoto
  case filter
  case gutters
  case homeTour
  case insulation
  case milano
  case nitro
  case nitroLogo
  case nitroMobile
  case plus
  case powerLogo
  case powergon
  case powergonSolid
  case projectPulse
  case roofing
  case runway
  case search
  case siding
  case solar
  case stream
  case tempo
  case times
  case trash
  case windows

  public var image: Image {
    switch self {
    case .accessories: return Image(.accessories)
    case .bars: return Image(.bars)
    case .calendar: return Image(.calendar)
    case .check: return Image(.check)
    case .chevronDown: return Image(.chevronDown)
    case .connectLogo: return Image(.connectLogo)
    case .connectTypeface: return Image(.connectTypeface)
    case .doors: return Image(.doors)
    case .edit: return Image(.edit)
    case .estimatePhoto: return Image(.estimatePhoto)
    case .filter: return Image(.filter)
    case .gutters: return Image(.gutters)
    case .homeTour: return Image(.homeTour)
    case .insulation: return Image(.estimatePhoto)
    case .milano: return Image(.milano)
    case .nitro: return Image(.nitro)
    case .nitroLogo: return Image(.nitroLogo)
    case .nitroMobile: return Image(.nitroMobile)
    case .plus: return Image(.plus)
    case .powerLogo: return Image(.powerLogo)
    case .powergon: return Image(.powergon)
    case .powergonSolid: return Image(.powergonSolid)
    case .projectPulse: return Image(.projectPulse)
    case .roofing: return Image(.roofing)
    case .runway: return Image(.runway)
    case .search: return Image(.search)
    case .siding: return Image(.siding)
    case .solar: return Image(.solar)
    case .stream: return Image(.stream)
    case .tempo: return Image(.tempo)
    case .times: return Image(.times)
    case .trash: return Image(.trash)
    case .windows: return Image(.windows)
    }
  }

  public var id: String { return self.rawValue }
}

#Preview {
  PBIcons()
}
