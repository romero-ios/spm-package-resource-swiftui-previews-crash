# spm-bug

This project demonstrates a bug in SPM where creating a dependency between libraries defined within the same package causes a crash in SwiftUI previews when `LibraryA` depends on `LibraryB`s resources

Package structure:
- spm-bug
   - LibraryA
   - LibraryB
   
LibraryB contains Resources/Assets.xcassetcatalog with one image resource contained within, named MyImage.


```
public enum Images {
    public static let myImage = UIImage(named: "MyImage", in: .fixedModule, with: nil)!
}
```

The property `myImage` is used in order to load the image from the library.

In `LibraryA`, there is a SwiftUI View with the following definition:

```
import SwiftUI
import LibraryB

public struct MyView: View {

    public init() {}

    public var body: some View {
        VStack {
            Text("The Image")
            /* Uncomment the below line to get a preview */
//            Image(systemName: "circle.fill")
            Image(uiImage: Images.myImage) // This causes the preview to crash
        }
    }

}
```

`Image(uiImage: Images.myImage)` relies on loading the resource defined in LibraryB, and will cause the SwiftUI preview to crash.
