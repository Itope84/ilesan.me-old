<template>
  <div>
    <Header @scrolled="scrollToSection(1)" />
    <About />
    <Projects />
  </div>
</template>

<script>
import Header from '../components/Header.vue';
import About from '../components/About.vue';
import Projects from '../components/Projects.vue';

export default {
  components: {
    Header,
    About,
    Projects,
  },
  data() {
    return {
      inMotion: false,
      activeSection: 0,
      offsets: [],
      touchStartY: 0,
      sections: [],
    };
  },
  mounted() {
    this.calculateSectionOffsets();

    // window.addEventListener('DOMMouseScroll', this.handleMouseWheel) // Mozilla Firefox
    // window.addEventListener('mousewheel', this.handleMouseWheel, {
    //   passive: false
    // }) // Other browsers

    // window.addEventListener('touchstart', this.touchStart, {
    //   passive: false
    // }) // mobile devices
    // window.addEventListener('touchmove', this.touchMove, {
    //   passive: false
    // }) // mobile devices
  },

  destroyed() {
    window.removeEventListener('mousewheel', this.handleMouseWheel, {
      passive: false,
    }); // Other browsers
    window.removeEventListener('DOMMouseScroll', this.handleMouseWheel); // Mozilla Firefox
    // window.removeEventListener('touchstart', this.touchStart) // mobile devices
    // window.removeEventListener('touchmove', this.touchMove) // mobile devices
  },
  methods: {
    calculateSectionOffsets() {
      const sections = document.querySelectorAll('.fullpage');
      this.sections = sections;

      for (let i = 0; i < sections.length; i += 1) {
        this.offsets.push(sections[i].offsetTop);
      }
    },
    scrollToSection(id, force = false) {
      if (this.inMotion && !force) return;

      this.activeSection = id;
      this.inMotion = true;

      const section = this.sections[id] || this.sections[0];

      section.scrollIntoView({ behavior: 'smooth' });

      // Prevent scrolling again till after 0.4secs
      setTimeout(() => {
        this.inMotion = false;
      }, 400);
    },
    handleMouseWheel(event) {
      event.preventDefault();
      if (this.inMotion) return;

      if (event.wheelDelta < 30) {
        this.moveDown();
      } else {
        this.moveup();
      }
    },

    moveDown() {
      if (this.activeSection < this.sections.length - 1) {
        this.scrollToSection(this.activeSection + 1, true);
      }
    },
    moveup() {
      if (this.activeSection > 0) {
        this.scrollToSection(this.activeSection - 1, true);
      }
    },
    touchStart(e) {
      this.touchStartY = e.touches[0].clientY;
    },
    // touchMove(e) {
    //   if (this.inMotion) return;
    //   e.preventDefault();
    //   const currentY = e.touches[0].clientY;

    //   if (this.touchStartY - currentY > 30) {
    //     this.moveDown();
    //   } else if (this.touchStartY - currentY < -30) {
    //     this.moveup();
    //   }
    //   return false;
    // },
  },
};
</script>

<style>
/* Sample `apply` at-rules with Tailwind CSS
.container {
  @apply min-h-screen flex justify-center items-center text-center mx-auto;
}
*/
</style>
