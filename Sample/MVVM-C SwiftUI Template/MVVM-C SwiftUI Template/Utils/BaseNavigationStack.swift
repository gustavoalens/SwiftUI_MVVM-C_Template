import SwiftUI

struct BaseNavigationStack<RootView: View, Coordinator: BaseCoordinatorProtocol>: View {
  
  @StateObject var coordinator: Coordinator
  let rootView: RootView
  let isRoot: Bool
  
  init(coordinator: Coordinator, rootView: RootView) {
    self._coordinator = StateObject(wrappedValue: coordinator)
    self.rootView = rootView
    self.isRoot = coordinator.path.isRoot()
  }
  
  var body: some View {
    if isRoot {
      NavigationStack(path: coordinator.path._path) {
        rootView
          .navigationDestination(for: AnyFlow.self) { flow in
            flow.build(path: coordinator.path)
          }
      }
    } else {
      rootView
    }
  }
}
