<template>
  <div class="progress-bar progress-bar-show-percent">
    <div class="progress-bar-filled" style="width: 0%"></div>
  </div>
</template>

<script>
export default {
  props: {
    delay: {
      type: Number,
      required: false,
      default: 5
    },
    progress: {
      type: Number,
      required: false,
      default: 0
    },
    label: {
      type: String,
      required: false,
      default: ""
    }
  },
  methods: {
    change() {
      this.$el.firstElementChild.style.width = this.progress + '%'
      this.$el.firstElementChild.dataset.filled = this.label
    }
  },
  mounted() {
    setTimeout(() => {
      this.change()
    }, this.delay * 100)
  }
}
</script>
