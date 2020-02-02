<template>
  <section class="projects fullpage flex flex-col justify-center">
    <div class="container  text-center md:max-w-3xl">
      <h4 class=" text-3xl font-bold text-alt">
        Recent Projects
      </h4>
      <p class=" text-sm text-gray-300">
        Here are some of my most recent projects. <br>
        Feel free to click on each to view details
      </p>
      <div class="my-10">
        <client-only>
          <div class="flex flex-wrap justify-center">
            <div
              v-for="(project, index) in projects"
              :key="index"
              class="project h-48 w-full max-w-xs sm:w-1/2 md:w-1/3 bg-cover bg-center"
              :style="`background-image: url(${project.cover})`"
            >
              <div
                class="h-full flex-col items-center justify-center project-overlay"
              >
                <h5 class="project-title">
                  {{ project.title }}
                </h5>
              </div>
            </div>
          </div>
        </client-only>
      </div>
    </div>
  </section>
</template>

<style lang="scss" scoped>
.projects {
  background-color: #171d40;
}

.project {
  .project-overlay {
    display: none;
    cursor: pointer;
    transition-duration: 0.5s;
  }
  &:hover {
    .project-overlay {
      display: flex;
      transition-duration: 0.5s;

      .project-title {
        animation-name: fadeInDown;
        animation-duration: 0.6s;
      }
    }
  }
}

.project-overlay {
  background-color: rgba($color: #fff, $alpha: 0.3);
}
</style>

<script>
export default {
  data() {
    return {
      projects: [
        {
          title: 'Jobsicle Maldives',
          description:
            'Job board for Jobseeekers and Employers in Maldives. Jobseekers get an automated resume when they update their profile; Employers can post job openings and manage their entire hiring process from the platform',
          technologies: 'VueJs, Laravel, Sass, Firebase',
          features:
            'REST API, sleek responsive design, instant messaging, push messages with firebase, mailing, caching',
          cover: 'screenshots/jobsicle/jobsicle.png',
          images: require
            .context(
              '../static/screenshots/jobsicle',
              true,
              /(\.png$)|(\.svg)|(\.jpg)|(\.webp)/i,
            )
            .keys()
            .map((key) => key.split('/').pop()),
        },
        {
          title: 'AceUp Elearning',
          description:
            'Elearning app for undergraduate students to make preparing for exams a much smoother and enjoyable experience. Students can study notes, solve quizzes and challenge their friends to a duel. Users gain points as they progress and are ranked on a leaderboard',
          technologies: 'Flutter and Laravel',
          features:
            'REST API, beautiful design, mobile caching and database, equation rendering',
          cover: 'screenshots/aceup/1.webp',
          images: require
            .context(
              '../static/screenshots/aceup',
              true,
              /(\.png$)|(\.svg)|(\.jpg)|(\.webp)/i,
            )
            .keys()
            .map((key) => key.split('/').pop()),
        },
      ],
    };
  },
};
</script>
