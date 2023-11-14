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
        <p class="text-h6">{{ joke.question }}</p>
        <p>{{ joke.answer }}</p>
        <v-chip class="ma-2" color="primary" label>
          <v-icon start icon="mdi-account-circle-outline"></v-icon>
          {{ joke.author }}
        </v-chip>
      </v-card-text>
      <v-card-actions>
        <v-spacer></v-spacer>
        <nuxt-link to="/">
          <v-btn color="blue" variant="flat" elevation="4">
            Home
          </v-btn>
        </nuxt-link>
      </v-card-actions>
    </v-card>
  </div>
</template>

<script setup lang="ts">
import { ref } from "vue";

let joke = ref({ question: "", answer: "", author: "" });

function getJoke() {
  $fetch("https://api.intellitectsamples.com/joke/jokeoftheday").then(
    (data: any) => {
      joke.value = data;
    }
  );
}
getJoke();
</script>
