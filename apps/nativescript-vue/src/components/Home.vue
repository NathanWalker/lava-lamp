<script lang="ts" setup>
import { Color } from "@nativescript/core";
import { setupLamp, ISwiftLamp } from '@lava/nativescript-lamp';
setupLamp();

const data: ISwiftLamp = {
  gradientTopColor: new Color("#64b788").ios,
  gradientMiddleColor: new Color("#64b788").ios,
  gradientBottomColor: new Color("#35475c").ios,
};
</script>

<template>
  <Frame>
    <Page>
      <GridLayout class="bg-black">

        <SwiftUI swiftId="lavaLamp" :data="data">
        </SwiftUI>

        <Image src="https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Vue.js_Logo_2.svg/1024px-Vue.js_Logo_2.svg.png?20170919082558" class="logo"/>
      </GridLayout>
    </Page>
  </Frame>
</template>
