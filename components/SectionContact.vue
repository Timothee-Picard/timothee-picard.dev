<template>
  <section>
    <div class="main-contact">
      <div class="content">
        <p>
          <Icon name="fa6-regular:envelope" />
          <span>dev.timothee.picard@gmail.com</span></p>
        <p>
          <Icon name="ph:phone-bold" />
          <span>+33 6 89 65 50 88</span></p>
      </div>
    </div>
    <aside>
      <form ref="form" @submit.prevent="sendEmail">
        <div class="form-group">
          <input type="text" name="name" id="name" placeholder=" ">
          <label for="name">Nom</label>
        </div>
        <div class="form-group">
          <input type="text" name="firstname" id="firstname" placeholder=" ">
          <label for="firstname">Prénom</label>
        </div>
        <div class="form-group">
          <input type="email" name="email" id="email" placeholder=" " required>
          <label for="email">Email</label>
        </div>
        <div class="form-group">
          <textarea id="message" name="message" cols="30" rows="10" placeholder=" " required />
         <label for="message">Message</label>
        </div>
        <div class="form-group">
          <button type="submit" v-if="!loading">Envoyer</button>
          <button type="submit" disabled v-else><Icon name="eos-icons:bubble-loading" /> Envoi en cours</button>
        </div>
      </form>
    </aside>
  </section>
</template>

<script setup>
import emailjs from '@emailjs/browser';

const loading = ref(false)
const form = ref(null);
const config = useRuntimeConfig()
function sendEmail() {
  loading.value = true
  emailjs.sendForm(config.public.serviceId, config.public.templateId, form.value , config.public.keyPublic)
      .then((result) => {
        console.log('SUCCESS!', result.text);
        form.value.name.value = ""
        form.value.firstname.value = ""
        form.value.email.value = ""
        form.value.message.value = ""
      })
      .catch((e) => {
        console.log('Erreur', e);
      })
      .finally(() => {
        loading.value = false
      })
}
</script>

<style scoped lang="scss">
@import "../assets/var";
form {
  width: 50%;
  text-align: left;
  @media only screen and (max-width: 767px)
  {
    width: 80%;
  }
}
.form-group {
  position: relative;
  padding-top: 40px;
  button[type=submit]{
    background-color: transparent;
    border: 1px solid $color-dark-green;
    font-family: $font-main;
    font-size: 1em;
    color: $color-dark-green;
    padding: 1em 4em;
    cursor: pointer;
    &:hover {
      border: 1px solid $color-dark-green;
      background-color: $color-dark-green;
      color: $color-white;
    }
    &:disabled {
      cursor: not-allowed;
      &:hover {
        background-color: $color-red;
        border: 1px solid $color-red;
        color: $color-white;
      }
    }
  }
  label {
    position: absolute;
    top: 50px;
    left: 0.8em;
    transition: 0.3s;
  }
  input, textarea {
    background-color: transparent;
    border: none;
    border-bottom: 1px solid $color-dark-green;
    width: 100%;
    padding: 1em;
    resize: none;
    &:focus, &:not(:placeholder-shown){
      &+label {
        top: 20px;
        left: 0;
      }
    }
  }
  input {
    height: 3em;
  }
  textarea {
    /* width */
    &::-webkit-scrollbar {
      width: 14px;
    }

    /* Track */
    &::-webkit-scrollbar-track {
      background: $color-white;
    }

    /* Handle */
    &::-webkit-scrollbar-thumb {
      background: $color-dark-green;
      border: 4px solid rgba(0, 0, 0, 0);
      background-clip: padding-box;
      border-radius: 9999px;
    }

    /* Handle on hover */
    &::-webkit-scrollbar-thumb:hover {
      background: #305f7091;
    }
  }
}
section {
  display: flex;
  flex-wrap: wrap;
}
.main-contact, aside {
  padding: 5em 0;
  width: 50%;
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  @media only screen and (max-width: 1023px)
  {
    min-height: inherit;
    padding: 10em 0;
    width: 100%;
  }
}
.main-contact {
  background-color: $color-dark-green;
  .content {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    gap: 2em;
    width: fit-content;
    margin: auto;
    font-size: 1.5em;
    color: $color-white;
    @media only screen and (max-width: 767px)
    {
      font-size: 1em;
      .icon {
        margin-right: 0.5em;
      }
    }
    @media only screen and (max-width: 330px)
    {
      font-size: 0.8em;
    }
  }
}
.icon {
  margin-right: 1.5em;
}
</style>
