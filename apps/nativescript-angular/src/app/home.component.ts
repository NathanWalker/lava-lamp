import { Component } from "@angular/core";
import { Color } from "@nativescript/core";
import { setupLamp, ISwiftLamp } from '@lava/nativescript-lamp';
setupLamp();

@Component({
  selector: "ns-home",
  templateUrl: "./home.component.html",
})
export class HomeComponent {
  data: ISwiftLamp = {
    gradientTopColor: new Color('#b32535').ios,
    gradientMiddleColor: new Color('#bd2b39').ios,
    gradientBottomColor: new Color('#bd2b39').ios,
  };;
}
