# SwiftUIPreviewLayouts

SwiftUIPreviewLayouts is a Swift package for generating multiple SwiftUI previews for various device layouts and multitasking modes, specifically for iOS.

![All Layouts in Action](./media/Previews Video.gif)

## Features

- Multiple device types
- Portrait and Landscape layouts
- Multitasking support for iPads

## Installation

```swift
dependencies: [
    .package(url: "https://github.com/YourGitHubUsername/SwiftUIPreviewLayouts.git", from: "1.0.0")
]
```

## Usage

```swift
import SwiftUI
import SwiftUIPreviewLayouts

struct YourView_Previews: PreviewProvider {
    static var previews: some View {
        PreviewLayouts() {
            YourView()
        }
    }
}
```

## Screenshots

### Portrait

![Portrait](./media/Portrait.png)

### Landscape

![Landscape](./media/Landscape.png)

### Landscape Half Split

![Landscape Half Split](./media/Landscape Half Split.png)

### Landscape Large Split

![Landscape Large Split](./media/Landscape Large Split.png)

### Landscape Slide

![Landscape Slide](./media/Landscape Slide.png)

### Landscape Small Split

![Landscape Small Split](./media/Landscape Small Split.png)

### Portrait Large Split

![Portrait Large Split](./media/Portrait Large Split.png)

### Portrait Slide

![Portrait Slide](./media/Portrait Slide.png)

### Portrait Small Split

![Portrait Small Split](./media/Portrait Small Split.png)

## Contributing

Pull requests are welcome.

## License

MIT
