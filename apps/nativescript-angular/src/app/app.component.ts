import { Component } from '@angular/core'
import { registerElement } from '@nativescript/angular'
import { SwiftUI } from '@nativescript/swift-ui'

registerElement('SwiftUI', () => SwiftUI);

@Component({
  selector: 'ns-app',
  templateUrl: './app.component.html',
})
export class AppComponent {}
