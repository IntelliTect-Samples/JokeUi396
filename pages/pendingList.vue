<template>
  <div class="d-flex align-center flex-column">
    <v-card width="1000" elevation="6" style="margin-top: 20px">
      <v-img
        class="align-end text-white"
        height="200"
        src="https://cdn.vuetifyjs.com/images/cards/docks.jpg"
        cover
      >
        <v-card-title>Approve or Reject Jokes</v-card-title>
      </v-img>
      <v-card-text>
        <v-table>
          <thead>
            <tr>
              <th>Question</th>
              <th>Answer</th>
              <th>Author</th>
              <th>Sentiment</th>
              <th width="100">Actions</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="joke in jokes" :key="joke.id">
              <td>{{ joke.question }}</td>
              <td>{{ joke.answer }}</td>
              <td>{{ joke.author }}</td>
              <td>{{ joke.sentiment }}</td>
              <td>
                <v-btn
                  @click="approve(joke)"
                  density="compact"
                  icon="mdi-check"
                ></v-btn>
                <v-btn
                  @click="reject(joke)"
                  density="compact"
                  icon="mdi-delete"
                ></v-btn>
              </td>
            </tr>
          </tbody>
        </v-table>
      </v-card-text>
      <v-card-actions>
        <v-text-field label="Key" v-model="key"></v-text-field>

        <v-spacer></v-spacer>
        <nuxt-link to="/">
          <v-btn color="blue" variant="flat" elevation="4"> Home </v-btn>
        </nuxt-link>
        <v-btn color="green" variant="flat" @click="getJokes" class="ml-4"
          >Refresh</v-btn
        >
      </v-card-actions>
    </v-card>
  </div>
</template>

<script setup lang="ts">
import { reactive, ref } from "vue";
import { getData, setData } from 'nuxt-storage/local-storage';

let jokes = reactive([]) as Array<any>;
let key = ref("");
key.value = getData("key") || "";


function getJokes() {
  setData("key", key.value);
  $fetch("https://api.intellitectsamples.com/joke/PendingJokes").then(
    (data: any) => {
      jokes.length = 0;
      for (let item in data) {
        jokes.push(data[item]);
      }
    }
  );
}

function approve(joke: any) {
  setData("key", key.value);
  $fetch("https://api.intellitectsamples.com/joke-mgt/joke", {
    method: "POST",
    body: JSON.stringify(joke),
    headers: {
      "Content-Type": "application/json",
      "Ocp-Apim-Subscription-Key": "9eb645de76164592aaa199271dcfb6b9",
    },
  })
    .then((data: any) => {
      alert("Accepted");
    })
    .catch((error: any) => {
      alert("Error: " + error);
    })
    .finally(() => {
      getJokes();
    });
}

function reject(joke: any) {
  setData("key", key.value);
  $fetch("https://api.intellitectsamples.com/joke-mgt/joke", {
    method: "DELETE",
    body: JSON.stringify(joke),
    headers: {
      "Content-Type": "application/json",
      "Ocp-Apim-Subscription-Key": "9eb645de76164592aaa199271dcfb6b9",
    },
  })
    .then((data: any) => {
      alert("Deleted");
    })
    .catch((error: any) => {
      alert("Error: " + error);
    })
    .finally(() => {
      getJokes();
    });
}
getJokes();
</script>
