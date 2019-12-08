<template>
  <section class="about fullpage flex flex-col justify-center">
    <div class="container  md:max-w-3xl">
      <!-- About Me -->
      <div
        class="px-4 flex flex-wrap text-center md:text-left justify-center md:justify-between items-center"
      >
        <div class="w-full md:w-1/2 px-3 md:px-6">
          <img src="programmer.svg" alt="" class="max-w-full" />
        </div>
        <div class="w-full md:w-1/2 px-3 md:px-6 my-4">
          <h4 class=" text-3xl font-bold text-gray-200">Who am I?</h4>
          <p class="text-gray-400">
            I am a fullstack software developer with more than 2 years of
            experience building smooth experiences both on websites and mobile
            apps. I currently work as a Frontend Developer at
            <a href="https://patricia.com.ng" class="fancy-link"
              >Patricia Technologies</a
            >.
          </p>
        </div>
        <div class="w-full py-4 mt-4 md:mt-16">
          <h4 class=" text-2xl font-black text-alt text-left mb-4 px-4">
            Technical Skills
          </h4>
          <client-only>
            <!-- <carousel
              :paginationEnabled="false"
              :autoplay="true"
              :autoplayTimeout="1000"
              :perPage="3"
              :scrollPerPage="false"
              :perPageCustom="[
                [470, 4],
                [590, 5],
                [780, 6]
              ]"
              class="my-carousel"
            >
              <slide

                class="c-slide"
              > -->
            <div class="flex flex-wrap justify-center -mx-4">
              <div
                v-for="(skill, index) in skills"
                :key="index"
                class="mx-4 my-4 flex flex-col justify-between items-center"
              >
                <div class="skill-holder">
                  <img
                    :src="`skills/${skill}`"
                    :alt="skill"
                    :title="skill.split('.')[0]"
                    class=" max-w-full mb-3"
                  />
                </div>

                <h6 class=" text-xl font-bold text-alt">
                  {{ skill.split('.')[0] }}
                </h6>
              </div>
            </div>
            <!-- </slide>
            </carousel> -->
          </client-only>
        </div>
      </div>
    </div>
  </section>
</template>
<style lang="scss" scoped>
.about {
  background-color: lighten($color: #171d40, $amount: 10);
}
.skill-holder {
  max-width: 80px;
}
</style>
<script>
export default {
  components: {},
  computed: {
    skills() {
      const files = require.context(
        '../static/skills',
        true,
        /(\.png$)|(\.svg)/i
      )
      return files.keys().map((key) => key.split('/').pop())
    }
  }
}
</script>
