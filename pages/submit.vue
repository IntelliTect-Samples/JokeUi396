<template>
  <div class="d-flex align-center flex-column">
    <v-card width="600" elevation="6" style="margin-top: 20px">
      <v-img
        class="align-end text-white"
        height="200"
        src="https://cdn.vuetifyjs.com/images/cards/docks.jpg"
        cover
      >
        <v-card-title>Submit a Joke</v-card-title>
      </v-img>
      <v-card-text>
        <v-text-field label="Question" v-model="joke.question"></v-text-field>
        <v-text-field label="Answer" v-model="joke.answer"></v-text-field>
        <v-text-field label="Author" v-model="joke.author"></v-text-field>
      </v-card-text>
      <v-card-actions>
        <v-spacer></v-spacer>
        <v-btn
          color="blue"
          variant="flat"
          elevation="4"
          @click="submit"
          class="mr-4"
        >
          Submit
        </v-btn>
        <nuxt-link to="/">
          <v-btn color="red" variant="flat" elevation="4"> Cancel </v-btn>
        </nuxt-link>
      </v-card-actions>
    </v-card>
  </div>
</template>

<script setup lang="ts">
import { reactive } from "vue";

let joke = reactive({
  question: "This is the Question",
  answer: "This is the Answer",
  author: "The Author's Name",
  text: "",
  id: "",
  created: "",
  tags: ["joke"],
  rating: 4,
  tagList: "joke",
});

function submit() {
  joke.text = `Q: ${joke.question}  A: ${joke.answer}`;
  joke.id = createGuid();
  joke.created = new Date().toLocaleDateString();
  $fetch("https://jokeapim.azure-api.net/joke/JokeSubmit", {
    method: "POST",
    body: JSON.stringify(joke),
  }).then((data: any) => {
    alert("Submitted");
    navigateTo("/");
  });
}

function createGuid() {
  return "xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g, function (c) {
    var uuid = (Math.random() * 16) | 0,
      v = c == "x" ? uuid : (uuid & 0x3) | 0x8;
    return uuid.toString(16);
  });
}
</script>
