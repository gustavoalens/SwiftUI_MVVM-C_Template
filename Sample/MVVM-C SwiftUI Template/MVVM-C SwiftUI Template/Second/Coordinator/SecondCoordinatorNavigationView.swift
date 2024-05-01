import SwiftUI

struct SecondCoordinatorNavigationView<RootView: View, Coordinator: SecondCoordinatorProtocol>: View {
  @StateObject var coordinator: Coordinator
  let rootView: RootView
  
  var body: some View {
    NavigationStack(path: $coordinator.path) {
      rootView
    }
  }
}

#Preview {
  SecondBuilder.build()
}
