<template>
  <div>
    <p>A quick breakdown of how I rate my technical skills, not everything, but the core stuff.</p>

    <p>PHP 5-7 [Symfony, Laravel, CodeIgniter, PHPUnit, Composer]</p>
    <WidgetsProgressBar :delay="5" :progress="95" label="There's always room for learning."></WidgetsProgressBar>

    <p>JavaScript ES5-7 [Vue.js, Vuex, webpack]</p>
    <WidgetsProgressBar :delay="6" :progress="65" label="The rabbit hole is deep."></WidgetsProgressBar>

    <p>Swift 1-5 & SwiftUI</p>
    <WidgetsProgressBar :delay="7" :progress="45" label="UI Components ♥."></WidgetsProgressBar>

    <p>MySQL 5-8</p>
    <WidgetsProgressBar :delay="8" :progress="80" label="Big data. Big smarts."></WidgetsProgressBar>

    <p>HTML 5 & CSS 3 [SASS, LESS]</p>
    <WidgetsProgressBar :delay="9" :progress="95" label="The basics."></WidgetsProgressBar>

    <p>Tooling [ZSH, dotfiles, Git, Docker, Vagrant, Sublime Suite, Hyper, TablePlus]</p>
    <WidgetsProgressBar :delay="10" :progress="95" label="I know how I like it. Today."></WidgetsProgressBar>

    <p>AWS [EB, CD, EC2, S3, RDS] & DO</p>
    <WidgetsProgressBar :delay="12" :progress="75" label="Cloud. Bigly."></WidgetsProgressBar>

    <p>Computers [Hardware, Linux, macOS, Windows, virtualisation, network & systems admin]</p>
    <WidgetsProgressBar :delay="13" :progress="85" label="Anything with a plug."></WidgetsProgressBar>
  </div>
</template>
