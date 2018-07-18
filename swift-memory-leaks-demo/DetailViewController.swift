import UIKit

class DetailViewController: UIViewController {
  
  var viewModel: DetailViewModel?
  var mediaView: MediaSectionView?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    print("DetailViewController loaded ...")
    viewModel = DetailViewModel(name: "Jian", presenter: self)
    
    mediaView = MediaSectionView()
    mediaView?.configure(presenter: self)
  }
  
  deinit {
    print("DetailViewController dealloc ...")
  }
}
