<template>
  <div>
    <section :id="id">
      <header>
        <h1 class="terminal-prompt">{{ title }}</h1>
      </header>

      <slot></slot>
    </section>

    <hr>
  </div>
</template>

<script>
export default {
  props: {
    id: {
      type: String,
      required: true,
    },
    title: {
      type: String,
      required: true,
    }
  }
}
</script>
