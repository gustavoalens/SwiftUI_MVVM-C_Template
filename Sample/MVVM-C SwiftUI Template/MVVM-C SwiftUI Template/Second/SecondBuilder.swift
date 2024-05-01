import SwiftUI

final class SecondBuilder: FlowProtocol {
  private let id: UUID = .init()
  
  func build(path: PathControlProtocol? = nil) -> AnyView {
    let coordinator = SecondCoordinator(path: path)
    let viewModel = SecondViewModel(coordinator: coordinator)
    return AnyView(
      SecondCoordinatorNavigationView(
        coordinator: coordinator,
        rootView: SecondView(viewModel: viewModel)
      )
    )
  }
  
  static func == (lhs: SecondBuilder, rhs: SecondBuilder) -> Bool {
    lhs.id == rhs.id
  }
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(id)
  }
}
