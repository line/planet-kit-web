# planet-kit-web

LINE Planet is a cloud-based real-time communications platform as a service (CPaaS) that helps you build a voice and video call environment. With LINE Planet, you can integrate call features into your service at minimum cost.

## Planet Documentation

[Planet Documentation](https://docs.lineplanet.me/) provides additional resources to help you integrate LINE Planet into your service. These resources include LINE Planet specifications, developer guides for each client platform, and server API references.

## Projects

- [planet-kit-web](planet-kit/): WebPlanetKit SDK.
- [planet-kit-virtual-background](planet-kit-virtual-background/): The virtual background plugin of WebPlanetKit.

## Installation

### Requirements

- Node
- npm or yarn
- Supported browser
  - Chromium 72+ based browser
  - Safari 14.5+ (beta)

### Installing via NPM

You can use WebPlanetKit SDK in your project by installing it through npm or yarn.

```
# npm
npm install @line/planet-kit

# yarn
yarn add @line/planet-kit
```

After installation, the method for importing the WebPlanetKit SDK into your project depends on your environment.

- For real environment

```javascript
import * as PlanetKit from "@line/planet-kit";
```

- For evaluation environment

```javascript
import * as PlanetKit from "@line/planet-kit/dist/planet-kit-eval";
```

### Including the SDK with a `<script>` tag

Alternatively, you can directly include the WebPlanetKit SDK in your code using a `<script>` tag. The SDK can be obtained from the `dist` directory in this Git repository.

After downloading the SDK, the method for integrating the WebPlanetKit SDK into your project depends on your environment.

- For real environment

```javascript
<script type="text/javascript" src="path/to/js/planet-kit.js"></script>
```

- For evaluation environment

```javascript
<script type="text/javascript" src="path/to/js/planet-kit-eval.js"></script>
```

After including the SDK, you can use it in your Javascript code as follows.

```javascript
<script type="text/javascript">const planetKit = new PlanetKit.Conference();</script>
```

## API Reference

For detailed information on APIs, please refer to the following documents.

[API Reference](https://docs.lineplanet.me/api-reference/client/web/5.3/index.html)

## Issues and Inquiries

Please file any issues or inquiries you have to our representative or dl_planet_help@linecorp.com.
Your opinions are always welcome.

## FAQ

You can find answers to our frequently asked questions in the [FAQ](https://docs.lineplanet.me/help/faq/) section.
