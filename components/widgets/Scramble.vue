<template>
  <span class="scramble"
    @mouseover="onMouseOver($event)"
    @mouseleave="onMouseLeave($event)">
    <slot></slot>
  </span>
</template>

<script>
export default {
  data: () => ({
    interval: null
  }),
  computed: {
    originalText() {
      return this.$slots.default[0].text
    }
  },
  methods: {
    onMouseOver(event) {
      clearInterval(this.interval)
      event.target.innerText = this.originalText
    },
    onMouseLeave(event) {
      this.scramble(event.target)
    },
    getRandomInt(max) {
      return Math.floor(Math.random() * max)
    },
    getRandomFromArray(array) {
      return array[this.getRandomInt(array.length)]
    },
    scrambleText (text) {
      let chars = 'abcdef01234567'.split('')
      return text
        .split('')
        .map(x => this.getRandomFromArray(chars))
        .join('')
    },
    scramble(el) {
      this.interval = setInterval(() =>
        el.innerText = this.scrambleText(this.originalText)
      , 150)
    }
  },
  mounted() {
    this.scramble(this.$el)
  }
}
</script>
