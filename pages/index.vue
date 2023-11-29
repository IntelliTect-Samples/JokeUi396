<template>
  <div class="d-flex align-center flex-column">
    <v-card width="80%" elevation="6" style="margin-top: 20px">
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
          <v-btn class="mt-4" color="green" block rounded="xl" size="x-large" variant="elevated" elevation="16">
            Random Joke
          </v-btn>
        </nuxt-link>
      </v-card-text>
      <hr>
      <v-card-text>
        🎉 Welcome to JokeUI! - Where Laughter Takes Center Stage! 🎉
      </v-card-text>
      <v-card-text>
        Get ready to embark on a laughter-filled journey as we present to you a world of wit, humor, and outright silliness! 🤣 At JokeUI!, we believe that laughter is the best medicine, and we've concocted the perfect prescription for your daily dose of chuckles.
      </v-card-text>
      <v-card-text>
        Our mission? To tickle your funny bone, lift your spirits, and leave you grinning from ear to ear! Whether you're a joke aficionado, a pun enthusiast, or just someone in need of a good giggle, you've come to the right place. 🤭
      </v-card-text>
      <v-card-text>
        🚀 What to Expect:
      </v-card-text>
      <v-card-text>
        Hilarious jokes that will have you snorting with laughter.
        Side-splitting puns that will make you question your love for wordplay.
        Memes, comics, and funny images that are guaranteed to brighten your day.
        A community of fellow joke-lovers sharing their favorite quips and jests.
        So, fasten your seatbelt and prepare for a joyous ride through the whimsical world of JokeUI!. Get ready to LOL, ROFL, and maybe even snort a little – we won't judge!
      </v-card-text>
      <v-card-text>
        Remember, life is better when you're laughing. Let's turn your frown upside down together!
      </v-card-text>
      <v-card-text>
        Ready to dive into the laughter? Click, scroll, and let the hilarity begin! 😂✨
      </v-card-text>
      <hr>
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
