<template>
  <section-header class="section" id="accueil" />
  <section-skills class="section" id="competences" />
  <section-experience class="section" id="experiences" />
  <section-education class="section" id="diplomes" />
  <section-contact class="section" id="contact" />
</template>

<script>
export default {
  name: "index",
}
</script>

<style scoped lang="scss">
@import "../assets/var";
.section:not(#section1) {
  scroll-margin-top: -1px;
}
</style>
