<template>
  <span class="domfetti" @mouseover="onMouseOver($event)">
    <slot></slot>
  </span>
</template>

<script>
import { confetti } from 'dom-confetti'

export default {
  methods: {
    onMouseOver(event) {
      confetti(event.target, {
        angle: 90,
        spread: 55,
        startVelocity: 25,
        elementCount: 40,
        dragFriction: 0.1,
        duration: 2000,
        stagger: 1,
        width: "5px",
        height: "5px",
      })
    }
  }
}
</script>
