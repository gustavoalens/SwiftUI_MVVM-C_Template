import SwiftUI

final class SecondBuilder {
  static func build(path: NavigationPath = .init()) -> AnyView {
    let coordinator = SecondCoordinator(path: path)
    let viewModel = SecondViewModel(coordinator: coordinator)
    return AnyView(
      SecondCoordinatorNavigationView(
        coordinator: coordinator,
        rootView: SecondView(viewModel: viewModel)
      )
    )
  }
}
