import SwiftUI

final class MainBuilder {
  static func build(path: NavigationPath = .init()) -> AnyView {
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
}
