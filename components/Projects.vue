<template>
  <section class="projects fullpage flex flex-col justify-center">
    <div class="container  text-center md:max-w-3xl">
      <h4 class=" text-3xl font-bold text-alt">Recent Projects</h4>
      <p class=" text-sm text-gray-300">
        Here are some of my most recent projects. <br />
        Feel free to click on each to view details
      </p>
      <div class="my-10">
        <client-only>
          <carousel>
            <slide></slide>
          </carousel>
        </client-only>
      </div>
    </div>
  </section>
</template>

<style lang="scss" scoped>
.projects {
  background-color: #171d40;
}
</style>

<script>
export default {
  data() {
    return {
      projects: [
        {
          title: 'Jobsicle Maldives',
          description: 'Job board for Jobseeekers and Employers in Maldives.'
        }
      ]
    }
  }
}
</script>
