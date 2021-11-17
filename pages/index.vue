<template>
  <div>
    <GlobalBlock id="about" title="man me">
      <SectionsHomeAbout />
    </GlobalBlock>

    <GlobalBlock id="skills" title="htop">
      <SectionsHomeSkills />
    </GlobalBlock>

    <GlobalBlock id="projects" title="ls -lah ~/git">
      <SectionsHomeProjects />
    </GlobalBlock>

    <GlobalBlock id="hobbies" title="ls -lah /opt">
      <SectionsHomeHobbies />
    </GlobalBlock>

    <GlobalBlock id="history" title="history | grep me">
      <SectionsHomeHistory />
    </GlobalBlock>

    <GlobalBlock id="social" title="wall">
      <SectionsHomeSocial />
    </GlobalBlock>

    <SectionsHomeVersion />
  </div>
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({})
</script>
