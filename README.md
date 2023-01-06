**Lava Lamp** - *Light up your insight with wonder*

<img src="https://raw.githubusercontent.com/NativeScript/artwork/main/logo/export/NativeScript_Logo_Wide_White_Blue_Rounded_Blue.png" width="200"/> 

iOS apps flavored with Angular, React, Solid, Svelte, TypeScript and Vue

- [Setup to Play](#setup-to-play)
- [Taste the Rainbow](#taste-the-rainbow)
- [What is This?](#what-is-this)
- [Credits](#credits)

## Setup to Play

Prerequisites:
- [NativeScript Environment Setup](https://docs.nativescript.org/environment-setup.html)
- yarn installed: `npm install -g yarn` (tested with 1.22.19)
- node 16+

```
yarn setup
```

## Taste the Rainbow

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Angular_full_color_logo.svg/2048px-Angular_full_color_logo.svg.png" width="60"/>

```
yarn nx run nativescript-angular:ios
```

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/1024px-React-icon.svg.png?20220125121207" width="60"/>

```
yarn nx run nativescript-react:ios
```

<img src="https://www.solidjs.com/img/logo/without-wordmark/logo.png" width="60"/>

```
yarn nx run nativescript-solid:ios
```

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Svelte_Logo.svg/996px-Svelte_Logo.svg.png?20191219133350" width="60"/>

```
yarn nx run nativescript-svelte:ios
```

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Typescript_logo_2020.svg/1024px-Typescript_logo_2020.svg.png?20221110153201" width="60"/>

```
yarn nx run nativescript-typescript:ios
```

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Vue.js_Logo_2.svg/1024px-Vue.js_Logo_2.svg.png?20170919082558" width="60"/>

```
yarn nx run nativescript-vue:ios
```

## What is This?

An Nx workspace with Angular, React, Solid, Svelte, TypeScript and Vue iOS apps all sharing the same SwiftUI files via NativeScript.

The workspace combines yarn workspaces with Nx to hoist dependencies where needed to share.

- Each app shares iOS Resources including SwiftUI files from [here](tools/App_Resources/iOS/src).
- Each app's `nativescript.config.ts` configures the shared resources via the `appResourcesPath` property

## Credits

Inspired by [@Inncoder_](https://twitter.com/Inncoder_)