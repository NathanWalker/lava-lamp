import { createApp, registerElement } from 'nativescript-vue';
import Home from './components/Home.vue';
import { SwiftUI } from '@nativescript/swift-ui';

registerElement('SwiftUI', () => SwiftUI);

createApp(Home).start();
