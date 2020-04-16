import 'package:flutter/material.dart';

import './models/category.dart';
import './models/audio.dart';

// This page contains the necessary data for the meditation categories and the
// meditations themselves.

// The audio is split up into categories by id, title, and color
// Color affects the visual affects of the grids on the app

const AUDIO_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Meditate',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Study',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Sleep',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'Workout',
    color: Colors.amber,
  ),
];

// The actual audio is defined by id, categories, title, complexity, imgURL, duration,
// and whether or not it fits into one of the categories: meditate, study, sleep, or workout

// The steps is commented out in the case we want to include steps to each individual audio clip
// This will create another box for the steps in the interface

//The steps are commented out throughout every file in this code in case we wanted to add a "Steps" section

const AUDIO_DATA = const [
  Audio(
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
      'Loving-kindness meditation is also known as Metta meditation. Its goal is to cultivate an attitude of love and kindness toward everything, even a persons enemies and sources of stress.'
      'While breathing deeply, practitioners open their minds to receiving loving kindness. They then send messages of loving kindness to the world, to specific people, or to their loved ones.'
      'In most forms of this meditation, the key is to repeat the message many times, until the practitioner feels an attitude of loving kindness.'
      'Loving-kindness meditation is designed to promote feelings of compassion and love, both for others and oneself.'
      'This type of meditation may increase positive emotions and has been linked to reduced depression, anxiety, and post-traumatic stress or PTSD.'
    ],
//    steps: [
//    ],
    isMeditate: true,
    isStudy: false,
    isSleep: false,
    isWorkout: false,
  ),
  Audio(
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
      'Progressive relaxation, sometimes called body scan meditation, is meditation that encourages people to scan their bodies for areas of tension. The goal is to notice tension and to allow it to release.'
      'During a progressive relaxation session, practitioners start at one end of their body, usually their feet, and work through the whole.'
      'Some forms of progressive relaxation require people to tense and then relax muscles. Others encourage a person to visualize a wave, drifting over their body to release tension.'
      'Progressive relaxation can help to promote generalized feelings of calmness and relaxation. It may also help with chronic pain. Because it slowly and steadily relaxes the body, some people use this form of meditation to help them sleep.'
    ],
//    steps: [
//    ],
    isMeditate: false,
    isStudy: true,
    isSleep: false,
    isWorkout: false,
  ),
  Audio(
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
      'Mindfulness is a form of meditation that urges practitioners to remain aware and present in the moment.'
      'Rather than dwelling on the past or dreading the future, mindfulness encourages awareness of a person’s existing surroundings. Crucial to this is a lack of judgment. So, rather than reflecting on the annoyance of a long wait, a practitioner will simply note the wait without judgment.'
      'Mindfulness meditation is something people can do almost anywhere. While waiting in line at the grocery store, for example, a person might calmly notice their surroundings, including the sights, sounds, and smells they experience.'
      'A form of mindfulness is involved in most kinds of meditation. Breath awareness encourages practitioners to be aware of their breathing, while progressive relaxation draws attention to areas of tension in the body.'
      'Because mindfulness is a theme common to many forms of meditation, it has been extensively studied.'
    ],
//    steps: [
//    ],
    isMeditate: false,
    isStudy: false,
    isSleep: true,
    isWorkout: false,
  ),
  Audio(
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
      'Breath awareness is a type of mindful meditation that encourages mindful breathing.'
      'Practitioners breathe slowly and deeply, counting their breaths or otherwise focusing on their breaths. The goal is to focus only on breathing and to ignore other thoughts that enter the mind.'
     'As a form of mindfulness meditation, breath awareness offers many of the same benefits as mindfulness. Those include reduced anxiety, improved concentration, and greater emotional flexibility.'
    ],
//    steps: [
//    ],
    isMeditate: false,
    isStudy: false,
    isSleep: false,
    isWorkout: true,
  ),
];