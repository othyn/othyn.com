<template>
  <div>
    <CoreBlock id="about" title="man me">
      <SectionsHomeAbout />
    </CoreBlock>

    <CoreBlock id="skills" title="htop | grep 'Second nature'">
      <SectionsHomeSkillsOne />
      <br />
      <CoreHeader title="htop | grep 'Proficient'"></CoreHeader>
      <SectionsHomeSkillsTwo />
      <br />
      <CoreHeader title="htop | grep 'Exploring & Loving'"></CoreHeader>
      <SectionsHomeSkillsThree />
      <br />
      <SectionsHomeSkillsFooter />
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
