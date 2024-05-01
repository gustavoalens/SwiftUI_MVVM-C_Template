import SwiftUI

struct MainCoordinatorNavigationView<RootView: View, Coordinator: MainCoordinatorProtocol>: View {
  var coordinator: Coordinator
  let rootView: RootView
  
  var body: some View {
    BaseNavigationStack(coordinator: coordinator, rootView: rootView)
  }
}

#Preview {
  MainBuilder().build()
}
