import SwiftUI

enum MainFlow {
  case second
  
  func getFlow() -> AnyFlow {
    switch self {
      case .second:
        AnyFlow(SecondBuilder())
    }
  }
}
