<template>
  <div id="particle-container">
    <div
      v-for="particle in particle_count"
      :key="particle"
      class="particle"
    ></div>
  </div>
</template>

<style lang="scss">
$header-height: 500;
.particle {
  position: absolute;
  border-radius: 50%;
}

@for $i from 1 through 10 {
  @keyframes particle-animation-#{$i} {
    100% {
      transform: translate3d(
        (random(90) * 1vw),
        (random($header-height) * 1px),
        (random(100) * 1px)
      );
    }
  }

  .particle:nth-child(#{$i}) {
    animation: particle-animation-#{$i} 60s infinite;
    $size: random(5) + 5 + px;
    opacity: random(100) / 100;
    height: $size;
    width: $size;
    animation-delay: -$i * 0.2s;
    transform: translate3d(
      (random(90) * 1vw),
      (random($header-height) * 1px),
      (random(100) * 1px)
    );
    background: hsl(random(360), 70%, 50%);
  }
}
</style>

<script>
export default {
  data() {
    return {
      particle_count: 10
    }
  }
}
</script>
