<template>
  <header>
    <div class="main-header">
      <h1>Timothée Picard</h1>
      <h2>D<span class="type" style="--n:23">éveloppeur web frontend</span></h2>
      <div id="contentContactButton">
        <a href="#contact">
          <button>
            <Icon name="fa6-regular:paper-plane" />
            <span>
            Contactez-moi
          </span>
          </button>
        </a>
      </div>
      <div class="links">
        <a href="https://github.com/Timothee-Picard/" target="_blank">
          <Icon name="fa6-brands:github" />
        </a>
        <a href="https://fr.linkedin.com/in/timothee-picard" target="_blank">
          <Icon name="fa6-brands:linkedin-in" />
        </a>
      </div>
    </div>
    <aside>
      <div class="imageProfile">
        <div><img src="/profile.png" alt=""></div>
      </div>
    </aside>
  </header>
</template>

<script setup>
onMounted(() => {
  window.addEventListener('scroll', handleScroll);
})

onBeforeUpdate(() => {
  if (!process.client) return
  window.removeEventListener('scroll', handleScroll);
})
function handleScroll () {
  const contentButton = document.getElementById("contentContactButton")
  const button = contentButton.querySelector("button")
  if(contentButton.getBoundingClientRect().y <= 0) {
    button.classList.add("buttonIcon")
  }
  else {
    button.classList.remove("buttonIcon")
  }
}
</script>

<style scoped lang="scss">
@import "../assets/var";
#contentContactButton {
  height: 5em;
  display: flex;
  align-items: flex-end;
  button {
    z-index: 999;
    right: 75vw;
    bottom: 100vh;
    height: fit-content;
    display: flex;
    justify-content: space-between;
    padding: 1em 2em;
    border: 1px solid $color-white;
    background-color: $color-dark-green;
    color: $color-white;
    font-weight: 700;
    font-size: 1em;
    text-transform: uppercase;
    transition: right 1s, bottom 1s;
    @media only screen and (max-width: 1023px)
    {
      right: 50vw;
    }
    .icon {
      margin-right: 1em;
    }
    span {
      display: block;
    }
    &.buttonIcon {
      position: fixed;
      bottom: 0.5em;
      right: 0.5em;
      height: 2.5em;
      width: 2.5em;
      display: flex;
      justify-content: center;
      align-items: center;
      background-color: $color-dark-green;
      border-radius: 50%;
      border-width: 3px;
      font-size: 2em;
      padding: 0;
      @media only screen and (max-width: 1023px)
      {
        bottom: 0.5em;
        right: 0.5em;
        font-size: 1.2em;
      }
      .icon {
        margin-right: 0;
      }
      span {
        display: none;
      }
    }
    &:hover {
      cursor: pointer;
      background-color: $color-white;
      color: $color-dark-green;
      border-color: $color-dark-green;
    }
  }
}
header
{
  display: flex;
  flex-wrap: wrap;
}
.main-header, aside
{
  min-height: 70vh;
  width: 50%;
  padding: 6em 1em;
  @media only screen and (max-width: 1023px)
  {
    min-height: 60vh;
    width: 100%;
  }
}
.main-header
{
  position: relative;
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  background-color: $color-dark-green;
}
h1, h2, .links
{
  color: $color-white;
}
h1
{
  font-size: 5em;
  text-transform: capitalize;
  @media only screen and (max-width: 524px)
  {
    font-size: 3em;
  }
}
h2 {
  font-size: 2.5em;
  overflow: hidden;
  padding:20px;
  text-transform: capitalize;
  @media only screen and (max-width: 524px)
  {
    font-size: 1.5em;
  }
}
.links
{
  position: absolute;
  top: 1em;
  right: 1em;
  display: flex;
  flex-direction: column;
  gap: 0.5em;
  font-size: 1.8em;
  @media only screen and (max-width: 524px)
  {
    flex-direction: row;
  }
  @media only screen and (max-width: 1023px)
  {
    gap: 0.3em;
    font-size: 1.5em;
  }
  a{
    padding: 4px 8px 8px;
    background-size: 100% 200%;
    background-position: 0 5%;
    transition: background-position 0.5s, color 0.5s;
    &:nth-of-type(1)
    {
      color: #000;
      background-image: linear-gradient($color-dark-green 50%, #000 50%);
    }
    &:nth-of-type(2)
    {
      color: #0e76a8;
      background-image: linear-gradient($color-dark-green 50%, #0e76a8 50%);
    }
    &:hover
    {
      background-position: 0 100%;
      color: $color-white;
    }
  }
}
aside
{
  display: flex;
  justify-content: center;
  align-items: center;
  .imageProfile
  {
    position: relative;
    padding: 1em;
    border: 1em solid $color-dark-green;
    &::before, &::after
    {
      content: '';
      position: absolute;
      height: 1em;
      width: 4em;
      background-color: $color-white;
      transition: 0.5s;
      @media only screen and (max-width: 424px)
      {
        width: 3em;
      }
    }
    &::before
    {
      top: -1em;
      left: 62%;
    }
    &::after
    {
      bottom: -1em;
      left: 15%;
    }
    >div
    {
      overflow: hidden;
      height: 30em;
      @media only screen and (max-width: 1439px)
      {
        height: 20em;
      }
      @media only screen and (max-width: 424px)
      {
        height: 15em;
      }
      img
      {
        height: 100%;
        transition: 0.5s;
        max-width: 100%;
        object-fit: cover;
      }
      &:hover img
      {
        transform: scale(1.1);
      }
    }
    &:hover
    {
      &:after,&:before
      {
        width: 8em;
        @media only screen and (max-width: 424px)
        {
          width: 6em;
        }
      }
      &:after
      {
        left: 62%;
        @media only screen and (max-width: 1439px)
        {
          left: 48%;
        }
      }
      &:before
      {
        left: 15%;
      }
    }
  }
}

.type {
  color: transparent;
  //noinspection CssReplaceWithShorthandSafely
  background:
      linear-gradient(-90deg, #92b8bd 5px, rgba(23, 22, 22, 0) 0) 10px 0,
      linear-gradient($color-white 0 0) 0 0;
  //noinspection CssReplaceWithShorthandSafely
  background-repeat: no-repeat;
  background-size: calc(var(--n)*1ch) 200%;
  -webkit-background-clip: padding-box,text;
  background-clip: padding-box, text;
  animation:
      b .7s infinite steps(1),
      t calc(var(--n)*.2s) steps(var(--n)) forwards;
}
@keyframes t{
  from {background-size:0 200%}
}
@keyframes b{
  50% {background-position:0 -100%,0 0}
}
</style>
