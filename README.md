# Lava Lamp - Light up your weekend with wonder

[image of {N} logo] powered by [Nx logo]

iOS apps flavored with Angular, React, Solid, Svelte, TypeScript and Vue

- [Lava Lamp - Light up your weekend with wonder](#lava-lamp---light-up-your-weekend-with-wonder)
  - [Setup to Play](#setup-to-play)
  - [Taste the Rainbow](#taste-the-rainbow)
  - [What is This](#what-is-this)

## Setup to Play

Prerequisites:
- [NativeScript Environment Setup](https://docs.nativescript.org/environment-setup.html)
- yarn installed: `npm install -g yarn` (tested with 1.22.19)
- node 16+

```
yarn setup
```

## Taste the Rainbow

[image of angular]

```
yarn nx run nativescript-angular:ios
```

## What is This

An @NxDevTools workspace with Angular, React, Solid, Svelte, TypeScript and Vue iOS apps all sharing the same SwiftUI files via @NativeScript
Inspired by [@Inncoder_](https://twitter.com/Inncoder_)
[link to tweet]()

The workspace combines yarn workspaces with Nx to hoist dependencies where needed to share.

- Each app shares iOS Resources including SwiftUI files from [here](tools/App_Resources/iOS/src).
  - Each app's `nativescript.config.ts` configures the shared resources via the `appResourcesPath` property

