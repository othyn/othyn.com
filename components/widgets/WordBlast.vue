<template>
  <h1
    class="rainbow rainbow-text"
    @mouseover="onMouseOver($event)"
    @mouseleave="onMouseLeave($event)"
  >
    {{ title }}.
  </h1>
</template>

<script>
export default {
  props: {
    isFullScreen: {
      type: Boolean,
      required: false,
      default: false,
    },
  },
  data: () => ({
    title: '',
    words: [
      'othyn',
      'ben',
      'code',
      'photo',
      'fun',
      'game',
      'dog',
      'apple',
      'php',
      'laravel',
      'github',
      'twitter',
      'youtube',
      'space',
      'vue',
      'sublime',
      'hyper',
      'swift',
      'pc',
      'mac',
      'sass',
      'skiing',
      'movies',
      'halo',
      'cod',
      'battlefield',
      'factorio',
      'lincoln',
      'developer',
      'physics',
      'music',
      'design',
      'play',
      'experiment',
      'change',
      'words',
      'hello world',
      'percy pigs',
      'haribo',
      '10x',
      'rockstar',
      'linux',
      'articulate',
      'bash',
      'composer',
      'docker',
      'elucidator',
      'empathetic',
      'git & gitops',
      'hardware',
      'humble',
      'kubernetes',
      'macos',
      'mariadb',
      'mysql',
      'people',
      'perspicacity',
      'phpunit',
      'postgresql',
      'redis',
      'symfony',
      'system architecture',
      'unraid',
      'windows',
      'zsh',
      'aws (acronym city)',
      'ci / cd pipelines',
      'cloudflare',
      'digital ocean',
      'github actions',
      'javascript',
      'less',
      'linode',
      'linux administration',
      'networking',
      'nginx',
      'nuxtjs',
      'python',
      'swiftui',
      'typescript',
      'unifi',
      'virtualisation',
      'vue.js',
      'vuex',
      'windows server',
      'assembly',
      'coreml',
      'grafana',
      'influxdb (+ telegraf)',
      'tensorflow',
      'unity',
      'webgl',
    ],
    wordInterval: 150,
    currentWordBlastCount: 0,
    currentWordBlastTimeout: 0,
  }),
  computed: {
    maxWords() {
      return this.words.length - 1
    },
  },
  mounted() {
    this.reset()
    this.wordBlast()
  },
  methods: {
    onMouseOver(event) {
      if (this.isFullScreen) {
        document.querySelector('body').classList.add('rainbow')
        event.target.classList.remove('rainbow', 'rainbow-text')
      }
    },
    onMouseLeave(event) {
      if (this.isFullScreen) {
        document.querySelector('body').classList.remove('rainbow')
        event.target.classList.add('rainbow', 'rainbow-text')
      }
    },
    reset() {
      this.title = this.words[0]
    },
    getRandomInt(min, max) {
      return Math.floor(Math.random() * (max - min + 1) + min)
    },
    getRandomTimeout() {
      return this.getRandomInt(3, 7) * 1000
    },
    getRandomCount() {
      return this.getRandomInt(3, 7)
    },
    getRandomWord() {
      return this.words[this.getRandomInt(1, this.maxWords)]
    },
    wordBlast() {
      if (this.currentWordBlastCount > 0) {
        this.title = this.getRandomWord()
        --this.currentWordBlastCount
        setTimeout(this.wordBlast, this.wordInterval)
      } else {
        this.reset()
        this.currentWordBlastCount = this.getRandomCount()
        this.currentWordBlastTimeout = this.getRandomTimeout()
        setTimeout(this.wordBlast, this.currentWordBlastTimeout)
      }
    },
  },
}
</script>
