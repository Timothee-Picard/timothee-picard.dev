<template>
  <div class="experience">
    <div class="date">
      <span>
        <time :datetime="props.date1">{{ props.date1 }}</time>
        <div v-if="props.date2">-</div>
        <time :datetime="props.date2">{{ props.date2 }}</time>
      </span>
    </div>
    <div class="dropdown">
      <div class="ico" :class="{ open : state }" @click="toggle()">
        <div class="line"></div>
        <div class="line"></div>
      </div>
      <div class="thread"></div>
    </div>
    <div class="experience-content">
      <h4><slot name="title">MASTERS DEGREE - UNIVERSITY NAME</slot></h4>
      <p :class="{ open : state }">
        <slot />
      </p>
    </div>
  </div>
</template>

<script setup>
const props = defineProps(['default', 'date1', 'date2'])
const state = ref(props.default)
function toggle() {
  (state.value) ? state.value = false : state.value = true
}
</script>

<style scoped lang="scss">
@import "../assets/var";
h4 {
  text-transform: uppercase;
}
.thread {
  width: 0;
  height: 100%;
  border-left: 4px dashed $color-white;
  margin: auto;
}
.experience {
  position: relative;
  display: flex;
  gap: 2em;
  padding: 0 0.5em;
  @media only screen and (max-width: 1023px)
  {
    flex-direction: column;
  }
}
.dropdown {
  @media only screen and (max-width: 1023px)
  {
    position: absolute;
    top: calc(51px + 1em);
    left: 50%;
    transform: translate(-50%, 0);
    height: 100%;
    z-index: 0;
  }
}
.date span {
  display: flex;
  background-color: $color-red;
  padding: 1em;
  border-radius: 5px;
  width: fit-content;
  margin: auto;
}
.ico {
  height: 52px;
  width: 52px;
  position: relative;
  background-color: $color-white;
  border: 1px solid $color-dark-green;
  border-radius: 5px;
  .line {
    width: 25px;
    height: 4px;
    background-color: $color-dark-green;
    border-radius: 20px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%) rotate(0deg);
    &:nth-of-type(1) {
      transform: translate(-50%, -50%) rotate(90deg);
    }
  }
  &.open {
    .line {
      &:nth-of-type(1) {
        transform: translate(-50%, -50%) rotate(0deg);
      }
    }
  }
}
.experience-content {
  @media only screen and (max-width: 1023px)
  {
    margin-top: calc(2em + 25px);
  }
  flex-grow: 1;
  text-align: left;
  padding: 1em;
  border: 1px solid $color-white;
  background-color: $color-dark-green;
  z-index: 1;
}
.experience-content p {
  max-height: 0;
  overflow: hidden;
  transition: 0.3s;
  &.open {
    max-height: 250px;
    margin-top: 0.5em;
  }
}
</style>
