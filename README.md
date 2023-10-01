# SwiftUIPreviewLayouts

SwiftUIPreviewLayouts is a Swift package for generating multiple SwiftUI previews for various device layouts and multitasking modes, specifically for iOS.

![All Layouts in Action](./media/Previews%20Video.gif)

## Features

- Multiple device types
- Portrait and Landscape layouts
- Multitasking support for iPads

## Installation

```swift
dependencies: [
    .package(url: "https://github.com/Matt54/SwiftUIPreviewLayouts.git", from: "1.0.0")
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

![Landscape Half Split](./media/Landscape%20Half%20Split.png)

### Landscape Large Split

![Landscape Large Split](./media/Landscape%20Large%20Split.png)

### Landscape Slide

![Landscape Slide](./media/Landscape%20Slide.png)

### Landscape Small Split

![Landscape Small Split](./media/Landscape%20Small%20Split.png)

### Portrait Large Split

![Portrait Large Split](./media/Portrait%20Large%20Split.png)

### Portrait Slide

![Portrait Slide](./media/Portrait%20Slide.png)

### Portrait Small Split

![Portrait Small Split](./media/Portrait%20Small%20Split.png)

## Contributing

Pull requests are welcome.

## License

MIT
