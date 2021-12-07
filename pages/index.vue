<template>
  <div>
    <CoreBlock id="about" title="man me">
      <SectionsHomeAbout />
    </CoreBlock>

    <CoreBlock id="skills" title="htop">
      <SectionsHomeSkills />
    </CoreBlock>

    <CoreBlock id="projects" title="ls -lah ~/git">
      <SectionsHomeProjects />
    </CoreBlock>

    <CoreBlock id="hobbies" title="ls -lah /opt">
      <SectionsHomeHobbies />
    </CoreBlock>

    <CoreBlock id="history" title="history | grep me">
      <SectionsHomeHistory />
    </CoreBlock>

    <CoreBlock id="social" title="wall">
      <SectionsHomeSocial />
    </CoreBlock>

    <SectionsHomeVersion />
  </div>
</template>

<script>
export default {}
</script>
