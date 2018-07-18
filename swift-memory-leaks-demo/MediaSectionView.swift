import UIKit

class MediaSectionView: UIView {
  private var mediaData: Data!
  private var presenter: UIViewController?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    self.commonInit()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    self.commonInit()
  }
  
  func configure(presenter: UIViewController) {
    self.presenter = presenter
  }
  
  func commonInit() {
    let m = 1024 * 1024

    self.mediaData = Data(count: 5 * m)
    let newData: Data? = "data!".data(using: .utf32)
    for _ in 0..<m {
      mediaData.append(newData!)
    }
  }
  
  deinit {
    print("MediaSectionView dealloc ...")
  }
}
