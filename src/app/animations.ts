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
  /*
  transition('Rules <=> History', [
    style({ position: 'relative' }),
    query(':enter, :leave', [
      style({
        position: 'absolute',
        top: 0,
        left: 0,
        width: '100%'
      })
    ]),
    query(':enter', [style({ left: '-100%' })]),
    query(':leave', animateChild()),
    group([
      query(':leave', [animate('300ms ease-out', style({ left: '100%' }))]),
      query(':enter', [animate('300ms ease-out', style({ left: '0%' }))])
    ]),
    query(':enter', animateChild())
  ]),*/
  transition('* => *', [
    query(
      ':enter',
      [
        style({
          opacity: 0
        })
      ],
      { optional: true }
    ),
    query(':leave', [

      stagger('-4800ms', [
      animate(500, style({ opacity: 0 }))
      ])
    ], {
      optional: true
    }),
    query(
      ':enter',
      [style({ opacity: 0 }), animate(500, style({ opacity: 1 }))],
      { optional: true }
    )
  ]) /*
  transition( '* => *', [

    query(':enter',
        [
            style({ opacity: 0 })
        ],
        { optional: true }
    ),

    query(':leave',
        [
            style({ opacity: 1 }),
            animate('0.5s', style({ opacity: 0 }))
        ],
        { optional: true }
    ),

    query(':enter',
        [
            style({ opacity: 0 }),
            animate('0.2s', style({ opacity: 1 }))
        ],
        { optional: true }
    )

])*/
]);
