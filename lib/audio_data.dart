import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import './models/category.dart';
import './models/audio.dart';

// This page contains the necessary data for the meditation categories and the
// meditations themselves.

// The audio is split up into categories by id, title, and color
// Color affects the visual affects of the grids on the app
// Color affects the visual affects of the grids on the app

const AUDIO_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Meditate',
    color: Colors.redAccent,
  ),
  Category(
    id: 'c2',
    title: 'Study',
    color: Colors.cyan,
  ),
  Category(
    id: 'c3',
    title: 'Sleep',
    color: Colors.blueGrey,
  ),
  Category(
    id: 'c4',
    title: 'Workout',
    color: Colors.green,
  ),
];

// The actual audio is defined by id, categories, title, complexity, imgURL, duration,
// and whether or not it fits into one of the categories: meditate, study, sleep, or workout

// The steps is commented out in the case we want to include steps to each individual audio clip
// This will create another box for the steps in the interface

//The steps are commented out throughout every file in this code in case we wanted to add a "Steps" section

const AUDIO_DATA = const [
  Grouping(
    id: 'a1',
    categories: [
      'c1',
    ],
    title: 'Loving-Kindness',
    complexity: Complexity.Short,
    imageUrl:
    'https://cdn.mindful.org/LovingKindness.jpg?q=80&fm=jpg&fit=crop&w=1400&h=875',
    duration: 2,
    about: [
      'Goal: bring positive mentality towards and for others.'
    ],
//    steps: [
//    ],
    isMeditate: true,
    isStudy: false,
    isSleep: false,
    isWorkout: false,
  ),
  Grouping(
    id: 'a2',
    categories: [
      'c2',
    ],
    title: 'Body Scan',
    complexity: Complexity.Moderate,
    imageUrl:
    'https://cdn.mindful.org/how-to-meditate.jpg?q=80&fm=jpg&fit=crop&w=1920&h=1080',
    duration: 5,
    about: [
      'Goal: Breathe and imagine the air flowing through you.'
    ],
//    steps: [
//    ],
    isMeditate: false,
    isStudy: true,
    isSleep: false,
    isWorkout: false,
  ),
  Grouping(
    id: 'a3',
    categories: [
      'c3',
    ],
    title: 'Mindfulness',
    complexity: Complexity.Moderate,
    imageUrl:
    'https://cdn.mindful.org/Meditation-Mindfulness-1-1024x640.jpg',
    duration: 5,
    about: [
      'Goal: Calm your mind'
    ],
//    steps: [
//    ],
    isMeditate: false,
    isStudy: false,
    isSleep: true,
    isWorkout: false,
  ),
  Grouping(
    id: 'a4',
    categories: [
      'c4',
    ],
    title: 'Breath Awareness',
    complexity: Complexity.Long,
    imageUrl:
    'https://thumbs.dreamstime.com/z/breathing-meditation-practice-man-practicing-breathing-exercises-eps-vector-cartoon-no-transparencies-138127153.jpg',
    duration: 10,
    about: [
      'Goal: Slow and deep breathing.'
    ],
//    steps: [
//    ],
    isMeditate: false,
    isStudy: false,
    isSleep: false,
    isWorkout: true,
  ),
];