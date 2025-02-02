import { Component, NO_ERRORS_SCHEMA } from "@angular/core";
import { Color } from "@nativescript/core";
import { setupLamp, ISwiftLamp } from '@lava/nativescript-lamp';
import { NativeScriptCommonModule, NativeScriptRouterModule } from "@nativescript/angular";

@Component({
  selector: "ns-home",
  templateUrl: "./home.component.html",
  imports: [NativeScriptCommonModule, NativeScriptRouterModule],
  schemas: [NO_ERRORS_SCHEMA],
})
export class HomeComponent {
  data: ISwiftLamp = {
    gradientTopColor: new Color('#b32535').ios,
    gradientMiddleColor: new Color('#bd2b39').ios,
    gradientBottomColor: new Color('#bd2b39').ios,
  };

  ngOnInit() {
    setupLamp();
  }
}
