<template>
  <div class="navbar">
    <div class="container px-4 py-3 lg:max-w-3xl">
      <div class="flex justify-between items-center">
        <div class="logo-section">
          <img src="logo.png" alt="" class="h-10 ">
        </div>
        <div class="menu-section">
          <!-- Hamburger -->
          <button
            type="button"
            class="block text-gray-500 hover:text-white focus:text-white focus:outline-none"
          >
            <svg class="h-6 w-6 fill-current" viewBox="0 0 24 24">
              <path
                fill-rule="evenodd"
                d="M4 5h16a1 1 0 0 1 0 2H4a1 1 0 1 1 0-2zm0 6h16a1 1 0 0 1 0
                2H4a1 1 0 0 1 0-2zm0 6h16a1 1 0 0 1 0 2H4a1 1 0 0 1 0-2z"
              />
            </svg>
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<style lang="scss" scoped>
.navbar {
  z-index: 10;
}
</style>
