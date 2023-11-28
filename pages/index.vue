<template>
  <div class="d-flex align-center flex-column">
    <v-card width="600" elevation="6" style="margin-top: 20px">
      <v-img
        class="align-end text-white"
        height="200"
        src="https://cdn.vuetifyjs.com/images/cards/docks.jpg"
        cover
      >
        <v-card-title>Joke of the Day Site</v-card-title>
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
