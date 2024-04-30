import SwiftUI

final class ___VARIABLE_productName:identifier___Builder {
  static func build(path: NavigationPath = .init()) -> AnyView {
    let service = ___VARIABLE_productName:identifier___Service()
    let coordinator = ___VARIABLE_productName:identifier___Coordinator(path: path)
    let viewModel = ___VARIABLE_productName:identifier___ViewModel(service: service, coordinator: coordinator)
    return AnyView(
      ___VARIABLE_productName:identifier___CoordinatorNavigationView(
        coordinator: coordinator,
        rootView: ___VARIABLE_productName:identifier___View(viewModel: viewModel)
      )
    )
  }
}
