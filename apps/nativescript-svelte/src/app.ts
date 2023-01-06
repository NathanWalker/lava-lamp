/*
In NativeScript, the app.ts file is the entry point to your application.
You can use this file to perform app-level initialization, but the primary
purpose of the file is to pass control to the app’s first page.
*/

import { svelteNativeNoFrame } from 'svelte-native'
import { SwiftUI } from '@nativescript/swift-ui'
import { setupLamp } from '@lava/nativescript-lamp'
import { registerNativeViewElement } from 'svelte-native/dom'
import App from './App.svelte'

setupLamp();

registerNativeViewElement('swiftUI', () => SwiftUI);

svelteNativeNoFrame(App, {})
