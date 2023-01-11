<template>
  <nav>
    <ul>
      <li>
        <NuxtLink to="/#accueil">
          <span>Accueil</span>
          <div class="circle"></div>
        </NuxtLink>
      </li>
      <li>
        <NuxtLink to="/#competences">
          <span>Compétences</span>
          <div class="circle"></div>
        </NuxtLink>
      </li>
      <li>
        <NuxtLink to="/#experiences">
          <span>Expériences</span>
          <div class="circle"></div>
        </NuxtLink>
      </li>
      <li>
        <NuxtLink to="/#diplomes">
          <span>Diplômes</span>
          <div class="circle"></div>
        </NuxtLink>
      </li>
      <li>
        <NuxtLink to="/#contact">
          <span>Contact</span>
          <div class="circle"></div>
        </NuxtLink>
      </li>
    </ul>
  </nav>
</template>

<script setup>
const savedIndex = ref(null)
onMounted(() => {
  window.addEventListener('scroll', handleScroll);
  handleScroll()
})

onBeforeUpdate(() => {
  if (!process.client) return
  window.removeEventListener('scroll', handleScroll);
})
function handleScroll () {
  const sections = [...document.querySelectorAll('.section')]
  const data = sections.map(section => section.offsetTop)
  const trigger = window.scrollY + (window.innerHeight / 3)
  for (const i of data) {
    const index = data.indexOf(i)
    if (trigger >= data[index] && trigger < data[index+1]){
      if (index !== savedIndex.value) {
        savedIndex.value = index
        addClassAndClear(index)
      }
      break
    }
    if (index === data.length -1 && trigger >= data[index]) {
      if (index !== savedIndex.value) {
        savedIndex.value = index
        addClassAndClear(index)
      }
    }
  }
}
function addClassAndClear(index) {
  const navLinks = [...document.querySelectorAll("nav li")]
  const elToClean = navLinks.find(navLink => navLink.className.includes("active"))
  if (elToClean) elToClean.classList.remove("active")
  navLinks[index].classList.add("active")
}
</script>

<style scoped lang="scss">
@import "../assets/var";
nav {
  position: fixed;
  top: 50%;
  right: 0.5em;
  transform: translateY(-50%);
  z-index: 999;
  @media only screen and (max-width: 1023px)
  {
    right: 0.3em;
  }
}
ul {
  text-align: right;
  display: flex;
  flex-direction: column;
  gap: 2em;
}
li {
  display: flex;
  justify-content: right;
  a {
    display: flex;
    justify-content: right;
    gap: 1em;
    width: min-content;
  }
  span {
    @media only screen and (max-width: 1439px)
    {
      color: transparent;
      background-clip: text;
      background-color: $color-dark-green;
      width: 0;
      transition: width 0.3s;
    }
    @media only screen and (max-width: 1023px)
    {
      display: none;
    }
  }
  &.active .circle {
    background-color: $color-red;
  }
  &:hover {
    color: $color-red;
    span {
      width: 120px;
      @media only screen and (max-width: 1439px)
      {
        background-color: $color-red;
      }
    }
  }
}
.circle {
  height: 20px;
  width: 20px;
  border-radius: 50%;
  background-color: $color-dark-green;
  border: 2px solid $color-white;
}
</style>
