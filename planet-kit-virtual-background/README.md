# virtual-background for planet-kit-web

`planet-kit-virtual-background` is the virtual background plugin of [WebPlanetKit](https://www.npmjs.com/package/@line/planet-kit).
The virtual background feature applies effects to the background of the video stream by detecting and segmenting the person from the background.

`planet-kit-virtual-background` leverages the solution of [MediaPipe](https://ai.google.dev/edge/mediapipe/solutions/guide).

## Installation

### Requirements

- Node
- npm or yarn
- [WebPlanetKit](https://www.npmjs.com/package/@line/planet-kit) version >= 5.3
- Supported browser
  - Chromium 72+ based browser
- Limitations
  - Virtual background is not supported in Safari browsers.

### Installing via NPM

You can use planet-kit-virtual-background SDK in your project by installing it through npm or yarn.
Install the planet-kit-virtual-background in the project where WebPlanetKit is installed.

```
# npm
npm install @line/planet-kit-virtual-background

# yarn
yarn add @line/planet-kit-virtual-background
```

After installation, import the planet-kit-virtual-background SDK into your project.

```javascript
import PlanetKitVirtualBackground from "@line/planet-kit-virtual-background";
```

### Including the SDK with a `<script>` tag

Alternatively, you can directly include the planet-kit-virtual-background SDK in your code using a `<script>` tag. The SDK can be obtained from the `dist` directory in this Git repository.

After downloading the SDK, integrate the planet-kit-virtual-background SDK into your project.

```javascript
<script type="text/javascript" src="path/to/js/planet-kit-virtual-background.js"></script>
```

## How to set up `planet-kit-virtual-background`

### Set up with `planet-kit`

After registering the planet-kit-virtual-background with planet-kit, you can use the virtual background feature. For more virtual background APIs, see the [API Reference](https://docs.lineplanet.me/api-reference/client/web/5.3/index.html).

```javascript
// Import SDK
import { Conference } from "@line/planet-kit";
import PlanetKitVirtualBackground from "@line/planet-kit-virtual-background";

// Create a planet-kit instance (This example is for group call).
const planetKit = new Conference();

// Create a planet-kit-virtual-background instance.
const virtualBackground = new PlanetKitVirtualBackground();

// Register the planet-kit-virtual-background with the planet-kit.
const conferenceParams = {...};
planetKit.joinConference(conferenceParams).then(() => {
  planetKit.registerVirtualBackground(virtualBackground);
});
```

### Set up with `MediaStreamManager` of planet-kit

The `MediaStreamManager` of planet-kit is the class to make it easy to create and manage a `MediaStream` using media devices.

You can register planet-kit-virtual-background with `MediaStreamManager`, and what is reflected in `MediaStreamManager` can be used in the planet-kit instance.

```javascript
// Import SDK
import { Conference, MediaStreamManager } from "@line/planet-kit";
import PlanetKitVirtualBackground from "@line/planet-kit-virtual-background";

// Create a MediaStreamManager instance.
const mediaStreamManager = new MediaStreamManager();

// Create a planet-kit-virtual-background instance.
const virtualBackground = new PlanetKitVirtualBackground();

// Register the planet-kit-virtual-background with the MediaStreamManager.
mediaStreamManager.registerVirtualBackground(virtualBackground);

// Start a call using the planet-kit with the MediaStreamManager virtual background effect applied.
const conferenceParams = {
  ...,
  mediaStreamManager: mediaStreamManager
};
planetKit.joinConference(conferenceParams);
```

## How to set up virtual background ML model files

`planet-kit-virtual-background` leverages the solution of [MediaPipe](https://ai.google.dev/edge/mediapipe/solutions/guide) to enable virtual background features. To utilize this functionality, it is necessary to set up the appropriate machine learning (ML) model files.

You can set up ML model files in two ways.

### Set up ML model files via CDN

By default, `planet-kit-virtual-background` will download the ML model files from the CDN at runtime.

```javascript
// Create planet-kit-virtual-background instance as the default config.
const virtualBackground = new PlanetKitVirtualBackground();
```

### Set up ML model files as static files

Alternatively, you can set up the ML model files by downloading them and hosting them as static files within your project.

#### 1. Download ML model files

Download ML model files using the script in this repository based on your operating system.

- For macOS or Unix-like system users:

Use the shell script `download_ml_model.sh`. Open a terminal and run the script.

```console
# Download ML model files to path
$ ./download_ml_model.sh {path}
```

- For Windows users:

Use the PowerShell script `download_ml_model.ps1`. Open PowerShell and run the script.

```console
# Download ML model files to path
$ ./download_ml_model.ps1 {path}
```

#### 2. Create planet-kit-virtual-background with the config

```javascript
// Create planet-kit-virtual-background instance with the locateFile config.
const virtualBackground = new PlanetKitVirtualBackground({ locateFile: "/{path}" });
```

Then, the ML model files in path are used at runtime.

## API Reference

For detailed information on APIs, please refer to the following documents.

[API Reference](https://docs.lineplanet.me/api-reference/client/web/5.3/index.html)

## Issues and Inquiries

Please file any issues or inquiries you have to our representative or dl_planet_help@linecorp.com.
Your opinions are always welcome.
