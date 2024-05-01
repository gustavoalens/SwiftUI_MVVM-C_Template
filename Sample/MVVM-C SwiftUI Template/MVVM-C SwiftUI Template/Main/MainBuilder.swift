import SwiftUI

final class MainBuilder: FlowProtocol {
  private let id: UUID = .init()
  
  func build(path: PathControlProtocol? = nil) -> AnyView {
    let service = MainService()
    let coordinator = MainCoordinator(path: path)
    let viewModel = MainViewModel(service: service, coordinator: coordinator)
    return AnyView(
      MainCoordinatorNavigationView(
        coordinator: coordinator,
        rootView: MainView(viewModel: viewModel)
      )
    )
  }
  
  static func == (lhs: MainBuilder, rhs: MainBuilder) -> Bool {
    lhs.id == rhs.id
  }
  
  func hash(into hasher: inout Hasher) {
    hasher.combine(id)
  }
}
