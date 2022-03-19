<template>
  <div>
    <section :id="id">
      <CoreHeader :title="title"></CoreHeader>

      <slot></slot>
    </section>

    <hr />
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
    },
  },
}
</script>
