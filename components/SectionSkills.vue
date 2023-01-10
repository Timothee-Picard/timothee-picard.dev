<template>
  <section class="container">
    <component-card v-bind:nameIcon="'fa6-solid:laptop-code'"> <!-- v-bind:linkTo="'http://www.google.com'" -->
      <template #title>Développement</template>
      <b>Frontend:</b><br>
      Vuejs, Angular, Reactjs <br>
      <b>Backend:</b><br>
      Php, Ruby, Nodejs<br>
      <b>Framework:</b><br>
      Symfony, Wordpress, Rails, Strapi
    </component-card>
    <component-card v-bind:nameIcon="'fa6-solid:fill-drip'">
      <template #title>Graphisme</template>
      <b>Image:</b><br>
      Photoshop, Figma, Lightroom <br>
      <b>Vidéo:</b><br>
      Première Pro, Animate<br>
    </component-card>
    <component-card v-bind:nameIcon="'fa6-solid:list-check'">
      <template #title>Gestion</template>
      <b>Gestion de projet:</b><br>
      Trello, Gant, Clickup<br>
      <b>Design:</b><br>
      Webdesign, UI / UX<br>
      <b>Test:</b><br>
      Fonctionnel, Performances<br>
    </component-card>
  </section>
</template>

<style scoped lang="scss">
@import "../assets/var";
.container{
  width: 100%;
  min-height: 500px;
  position: relative;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  align-items: center;
  gap: 1.5em;
  padding: 3em 0;
  @media only screen and (max-width: 1023px)
  {
    flex-direction: column;
  }
}
b {
  font-weight: bold
}
</style>
