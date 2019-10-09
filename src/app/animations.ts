import {
  trigger,
  transition,
  style,
  query,
  animateChild,
  group,
  animate,
  state,
  useAnimation,
  stagger,
  sequence
} from '@angular/animations';
import { fadeOut, fadeIn } from 'ng-animate';

export const Animation = trigger('routeAnimations', [
  transition('* <=> *', [
    query(':enter, :leave', [
      style({
        position: 'absolute',
        left: 0,
        width: '100%',
        opacity: 0,
        transform: 'scale(0) translateY(100%)'
      })
    ], { optional: true }),
    query(':enter', [
      animate(
        '600ms ease',
        style({ opacity: 1, transform: 'scale(1) translateY(0)' })
      )
    ], { optional: true }),
    query(':leave', [
      animate(
        '600ms ease-in-out',
        style({ opacity: 0, transform: 'scale(0) translateY(100%)' })
      )
    ], { optional: true })
  ])
]);
