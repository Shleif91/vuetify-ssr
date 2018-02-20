<template>
  <v-layout column justify-center align-center>
    <v-flex xs12 sm8 md6>
      <div class="text-xs-center">
        <img src="/static/v.png" alt="Vuetify.js" class="mb-5" />
      </div>
      <v-card>
        <v-card-text>
          <p>Welcome to the Webpack SSR template.</p>
          <p>Another text</p>
          <div class="text-xs-right">
            <em><small>&mdash; Oleg Shleif</small></em>
          </div>
        </v-card-text>
        <v-card-actions>
          <v-btn color="primary" flat router to="/inspire">Continue</v-btn>
        </v-card-actions>
      </v-card>
    </v-flex>
  </v-layout>
</template>
