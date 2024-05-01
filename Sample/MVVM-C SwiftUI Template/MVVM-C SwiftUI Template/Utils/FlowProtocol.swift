import SwiftUI

protocol FlowProtocol: Hashable, AnyObject {
  func build(path: PathControlProtocol?) -> AnyView
}

final class AnyFlow: FlowProtocol {
  let flow: any FlowProtocol
  
  init(_ flow: any FlowProtocol) {
    self.flow = flow
  }
  
  func build(path: PathControlProtocol?) -> AnyView {
    flow.build(path: path)
  }
  
  static func == (lhs: AnyFlow, rhs: AnyFlow) -> Bool {
    lhs.hashValue == rhs.hashValue
  }
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(flow)
  }
}
