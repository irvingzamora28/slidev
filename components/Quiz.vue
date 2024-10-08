<template>
    <div class="quiz">
      <h2>{{ question }}</h2>
      <div v-for="(answer, index) in answers" :key="index">
        <button @click="checkAnswer(index)" :class="{ correct: isCorrect(index), wrong: isWrong(index) }">
          {{ answer }}
        </button>
      </div>
      <div v-if="selectedAnswer !== null">
        <p v-if="correct" class="correct">¡Respuesta correcta! 🎉</p>
        <p v-else class="wrong">Respuesta incorrecta. 😔</p>
      </div>
    </div>
  </template>
  
  <script setup>
  import { ref } from 'vue'
  
  const question = '¿Cuál es el planeta más grande del sistema solar?'
  const answers = ['Tierra', 'Marte', 'Júpiter', 'Venus']
  const correctAnswer = 2
  
  const selectedAnswer = ref(null)
  const correct = ref(false)
  
  function checkAnswer(index) {
    selectedAnswer.value = index
    correct.value = index === correctAnswer
  }
  
  function isCorrect(index) {
    return selectedAnswer.value === index && correct.value
  }
  
  function isWrong(index) {
    return selectedAnswer.value === index && !correct.value
  }
  </script>
  
  <style scoped>
  .quiz {
    text-align: center;
  }
  button {
    margin: 10px;
    padding: 10px;
    font-size: 16px;
    cursor: pointer;
  }
  button.correct {
    background-color: green;
    color: white;
  }
  button.wrong {
    background-color: red;
    color: white;
  }
  .correct {
    color: green;
    font-weight: bold;
  }
  .wrong {
    color: red;
    font-weight: bold;
  }
  </style>
  