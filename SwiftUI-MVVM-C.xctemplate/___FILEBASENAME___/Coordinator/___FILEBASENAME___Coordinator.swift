import SwiftUI

final class ___VARIABLE_productName:identifier___Coordinator: ___VARIABLE_productName:identifier___CoordinatorProtocol {
  // MARK: - Properties
  @Published var path: NavigationPath
  
  // MARK: - Init
  init(path: NavigationPath) {
    self.path = path
  }
  
  // MARK: - Methods
  func <#goToFlow1#>() {
    push(flow: ___VARIABLE_productName:identifier___Flow.<#NextScreen1#>)
  }
  
  func <#goToFlow2#>(){
    push(flow: ___VARIABLE_productName:identifier___Flow.<#NextScreen2#>)
  }
  
  func <#goToFlowN#>() {
    push(flow: ___VARIABLE_productName:identifier___Flow.<#NextScreenN#>)
  }
  
  // MARK: - Flow Control Helper
  private func push(flow: ___VARIABLE_productName:identifier___Flow) {
    path.append(flow)
  }
}

protocol ___VARIABLE_productName:identifier___CoordinatorProtocol: ObservableObject {
  var path: NavigationPath { get set }
  
  func <#goToFlow1#>()
  func <#goToFlow2#>()
  func <#goToFlowN#>()
}
