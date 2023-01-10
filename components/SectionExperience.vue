<template>
  <section>
    <div class="content">
      <h3>Expérience profesionelle</h3>
      <component-experience date1="2020" date2="2023" default="true">
        <template #title>Analyste programmeur - Atnos</template>
        En alternance, je participe à la création de l'interface utilisateur de
        sites ou d'applications web. Je peut intervenir sur tous les éléments
        apparaissant à l'écran et géré par le navigateur web de l'utilisateur.
      </component-experience>
      <component-experience date1="2020" date2="2020">
        <template #title>Community manager - Bigfic</template>
        En alternance, je m'occupai de toute la communication autant par
        la mise à jour des articles sur le site web que par la créations de
        contenu pour Youtube, Facebook, Instagram, Flyers ...
      </component-experience>
      <component-experience date1="2019" date2="2020">
        <template #title>Développeur web - Ekalia</template>
        En stage au sein d'une association, j'ai dû réaliser des supports
        visuels pour Twitter.<br>
        J'ai aussi dû réalisé une maquette de site web pour enfin l'intégrer
        en HTML-CSS
      </component-experience>
    </div>
  </section>
</template>

<style scoped lang="scss">
@import "../assets/var";
h3 {
  font-size: 1.5em;
}
section {
  position: relative;
  background: $color-dark-green;
  color: $color-white;
  padding: 5em 0;
  &::before {
    content: '';
    position: absolute;
    top: -3px;
    width: 0;
    height: 0;
    border-style: solid;
    border-width: 50px 70px 0 70px;
    border-color: $color-white transparent transparent transparent;
    left: 50%;
    transform: translateX(-50%);
  }
  &::after {
    content: '';
    position: absolute;
    bottom: 3px;
    width: 0;
    height: 0;
    border-style: solid;
    border-width: 50px 70px 0 70px;
    border-color: $color-dark-green transparent transparent transparent;
    left: 50%;
    transform: translateX(-50%) translateY(100%);
  }
}

section .content {
  max-width: 900px;
  margin: auto;
  display: flex;
  flex-direction: column;
  gap: 2em;
  padding: 2em 0;
  overflow-y: hidden;
}
</style>
