import SwiftUI

struct ___VARIABLE_productName:identifier___View<ViewModel: ___VARIABLE_productName:identifier___ViewModelProtocol>: View {
  @StateObject var viewModel: ViewModel
  
  var body: some View {
    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
      .onTapGesture {
        viewModel.<#goToFlow1#>()
      }
  }
}

#Preview {
  ___VARIABLE_productName:identifier___Builder.build()
}
