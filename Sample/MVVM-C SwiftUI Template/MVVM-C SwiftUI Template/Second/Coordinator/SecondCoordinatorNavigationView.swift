import SwiftUI

struct SecondCoordinatorNavigationView<RootView: View, Coordinator: SecondCoordinatorProtocol>: View {
  var coordinator: Coordinator
  let rootView: RootView
  
  var body: some View {
    BaseNavigationStack(coordinator: coordinator, rootView: rootView)
  }
}

#Preview {
  SecondBuilder().build()
}
