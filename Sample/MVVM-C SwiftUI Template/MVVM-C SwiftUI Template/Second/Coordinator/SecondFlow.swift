import SwiftUI

enum SecondFlow {
  case second
  
  func getFlow() -> AnyFlow {
    switch self {
      case .second:
        AnyFlow(SecondBuilder())
    }
  }
}
