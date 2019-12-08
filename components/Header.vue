<template>
  <div class="header fullpage">
    <Particles></Particles>
    <Navbar></Navbar>

    <div class="container h-body py-12 md:py-32 text-white md:max-w-3xl">
      <div
        class="px-4 flex flex-wrap text-center md:text-left justify-center md:justify-between items-center"
      >
        <div class="mb-3 md:mb-0">
          <h5 class="text-gray-200 text-2xl">Hello,</h5>
          <h1 class="text-4xl">
            I'm <span class="text-orange-400">Temitope Ilesanmi</span>
          </h1>
          <h5 class="text-lg text-gray-400 mb-4">
            A full stack software developer
          </h5>

          <div class="flex  justify-center md:justify-start">
            <a
              @click.prevent="$emit('scrolled')"
              href="#"
              class="bg-purple-800 px-4 py-2 hover:shadow-md text-white font-bold mr-4 rounded-sm"
              >My portfolio</a
            >
            <a
              href="#"
              class="hover:bg-orange-700 text-white font-bold py-2 px-4 rounded-sm bg-orange-500"
              >My Portfolio</a
            >
          </div>
        </div>

        <div class="">
          <img src="temitope.png" alt="" class="max-w-full" />
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import Particles from './Particles'
import Navbar from './Navbar'
export default {
  components: {
    Particles,
    Navbar
  }
}
</script>
<style lang="scss" scoped>
.header {
  position: relative;
  width: 100%;
  background-color: #171d40;
}

.h-body,
.h-body * {
  z-index: 10;
}
</style>
