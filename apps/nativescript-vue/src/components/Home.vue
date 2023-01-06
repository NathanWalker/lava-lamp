<script lang="ts" setup>
import {
  ref,
  computed,
  onMounted,
  onUnmounted,
  $navigateTo,
} from "nativescript-vue";

const counter = ref(0);
const message = computed(() => {
  return `Blank {N}-Vue app: ${counter.value}`;
});

function logMessage() {
  console.log("You have tapped the message!");
}

let interval: any;
onMounted(() => {
  console.log("mounted");
  interval = setInterval(() => counter.value++, 100);
});

onUnmounted(() => {
  console.log("unmounted");
  clearInterval(interval);
});
</script>

<template>
  <Frame>
    <Page>
      <ActionBar>
        <Label text="Home" class="font-bold text-lg" />
      </ActionBar>

      <GridLayout rows="*, auto, auto, *" class="px-4">
        <Label
          row="1"
          class="text-xl align-middle text-center text-gray-500"
          :text="message"
          @tap="logMessage"
        />

        
      </GridLayout>
    </Page>
  </Frame>
</template>

<style>
/* .info {
    font-size: 20;
  } */
</style>
