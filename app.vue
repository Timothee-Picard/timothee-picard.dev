<template>
  <NuxtPage />
  <component-navigation />
</template>

<style lang="scss">
@import "./assets/var";
html
{
  scroll-behavior: smooth;
}
*
{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}
a
{
  text-decoration: none;
  color: inherit;
}
li
{
  list-style: none;
}
#__nuxt {
  text-align: center;
  color: $color-text;
  min-height: 100vh;
  font-family: $font-main;
}
body {
  background-color: $color-white;
  &::-webkit-scrollbar
  {
    display: none;
  }
}
</style>