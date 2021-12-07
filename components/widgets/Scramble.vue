<template>
  <span
    class="scramble"
    @mouseover="onMouseOver($event)"
    @mouseleave="onMouseLeave($event)"
  >
    <slot></slot>
  </span>
</template>

<script>
export default {
  data: () => ({
    interval: null,
  }),
  computed: {
    originalText() {
      return this.$slots.default[0].text
    },
  },
  mounted() {
    this.scramble(this.$el)
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
    scrambleText(text) {
      const chars = 'abcdef01234567'.split('')
      return text
        .split('')
        .map(() => this.getRandomFromArray(chars))
        .join('')
    },
    scramble(el) {
      this.interval = setInterval(
        function () {
          el.innerText = this.scrambleText(this.originalText)
        }.bind(this),
        150
      )
    },
  },
}
</script>
