<template>
  <div class="d-flex align-center flex-column">
    <v-card width="600" elevation="6" style="margin-top: 20px">
      <v-img
        class="align-end text-white"
        height="200"
        src="https://cdn.vuetifyjs.com/images/cards/docks.jpg"
        cover
      >
        <v-card-title>Joke of the Day</v-card-title>
      </v-img>
      <v-card-text>
        <nuxt-link to="/jotd">
          <v-btn color="yellow" variant="flat" elevation="4" class="mr-4">
            Joke of the Day
          </v-btn>
        </nuxt-link>

        <nuxt-link to="/random">
          <v-btn color="green" variant="flat" elevation="4">
            Random Joke
          </v-btn>
        </nuxt-link>
      </v-card-text>
      <v-card-actions>
        <v-spacer></v-spacer>
        <nuxt-link to="/submit">
          <v-btn color="blue" variant="flat" elevation="4" class="mr-4">
            Submit a Joke
          </v-btn>
        </nuxt-link>
        <nuxt-link to="/pendingList">
          <v-btn color="red" variant="flat" elevation="4">
            Approve Submitted Jokes
          </v-btn>
        </nuxt-link>
      </v-card-actions>
    </v-card>
  </div>
</template>

<script setup lang="ts"></script>

<style lang="css">

body {
    background-image: linear-gradient(-45deg, #ee7752, #e73c7e, #23a6d5, #23d5ab);
    background-size: 400% 600% !important;
    animation: gradient 15s ease infinite;
}

@keyframes gradient {
    0% {
        background-position: 0% 50%;
    }
    50% {
        background-position: 100% 50%;
    }
    100% {
        background-position: 0% 50%;
    }
}
</style>
