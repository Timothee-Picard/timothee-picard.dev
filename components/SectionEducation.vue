<template>
  <section>
    <h3>Mes diplômes</h3>
    <div class="card">
      <div class="leftBloc">
        <div class="content">
          <Icon name="fa-solid:graduation-cap" />
          <span>Bac +3</span>
        </div>
        <div class="angle"></div>
      </div>
      <div class="rightBloc">
        <h4>Développeur FrontEnd - 2023</h4>
        <p>
          J'ai réalisé différents projets web qui m'ont permis de reprendre les bases du développement en y ajoutant les
          bonnes pratiques. J'ai gagné en assurance grâce aux nombreuses présentations que j'ai dû réaliser et enfin
          j'ai appris à utiliser React Js
        </p>
      </div>
    </div>
    <div class="card">
      <div class="leftBloc">
        <div class="content">
          <Icon name="fa-solid:graduation-cap" />
          <span>Bac +2</span>
        </div>
        <div class="angle"></div>
      </div>
      <div class="rightBloc">
        <h4>DIMI - 2020</h4>
        <p>
          J'ai pu découvrir plusieurs aspects: le graphisme avec Photoshop et Illustrator, le montage vidéo,
          la photographie, la gestion des réseaux, le marketing et enfin la partie qui m'a le plus plu le développement
          web tout en restant organisé grâce à la gestion de projet
        </p>
      </div>
    </div>
    <div class="card">
      <div class="leftBloc">
        <div class="content">
          <Icon name="fa-solid:graduation-cap" />
          <span>Bac</span>
        </div>
        <div class="angle"></div>
      </div>
      <div class="rightBloc">
        <h4>Bacalauréat STI2D - 2017</h4>
        <p>
          J'y ai réalisé pour mon projet final une application mobile pouvant communiquer en bluetooth avec une éolienne.
          J'ai dû crée la carte électronique pour relever les mesures, puis envoyer les données relevées et calculées
          par un arduino à une application mobile
        </p>
      </div>
    </div>
  </section>
</template>

<style scoped lang="scss">
@import "../assets/var";
section {
  padding: 6em 2em 6em calc(2em - 20px);
  max-width: 700px;
  margin: auto;
  display: flex;
  flex-direction: column;
  gap: 4em;
}
.card {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}
h4 {
  text-transform: uppercase;
}
.leftBloc .content {
  position: absolute;
  top: 0;
  right: 0;
  width: 100%;
  height: 100%;
  transform: translate(20px, -20px);
  background-color: $color-dark-green;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  color: $color-white;
  gap: 1em;
  box-shadow: rgba(48, 94, 111, 0.35) 0px 5px 10px;
  .icon {
    font-size: 3em;
  }
  span {
    font-size: 1.5em;
    text-transform: uppercase;
    font-weight: 700;
  }
}
.leftBloc {
  position: relative;
  width: 200px;
  min-height: 100px;
  @media only screen and (max-width: 694px) {
    .content {
      color: $color-dark-green;
      background: none;
      box-shadow: none;
      transform: translate(0, -20px);
    }
    .angle {
      display: none;
    }
  }
}
.rightBloc {
  background-color: white;
  width: min-content;
  min-height: 140px;
  flex-grow: 1;
  box-shadow: rgba(48, 94, 111, 0.35) 0px 5px 10px;
  border-width: 0 !important;
  text-align: left;
  padding: 1em 1em 1em calc(1em + 20px);
  p {
    margin-top: 0.5em;
  }
  @media only screen and (max-width: 694px) {
    width: max-content;
  }
}
.angle {
  position: absolute;
  bottom: 0;
  right: 0px;
  transform: translateX(20px);
  border-style: solid;
  border-width: 20px 20px 0 0;
  border-color: #96a5a9 transparent transparent transparent;
  z-index: 999;
}
</style>
