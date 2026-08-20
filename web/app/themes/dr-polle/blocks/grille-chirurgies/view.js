/**
 * Cards Slider for .chirurgies_reparatrices — mobile/tablet only (< 992px).
 *
 * render.php only outputs a plain ".cards" wrapper (no slider markup). Below
 * the 991px breakpoint this script wraps ".cards" in a ".slider-clip" div,
 * builds ".slider-dots", and enables touch/swipe navigation. Above the
 * breakpoint the slider is torn down and the cards render as a plain grid.
 */
( function () {
	'use strict';

	var mql = window.matchMedia( '(max-width: 991px)' );

	document.addEventListener( 'DOMContentLoaded', function () {
		document.querySelectorAll( '.chirurgies_reparatrices' ).forEach( function ( section ) {
			var state = {
				section: section,
				cards: section.querySelector( '.cards' ),
				clip: null,
				dotsWrap: null,
				dots: [],
				current: 0,
				touchStartX: 0,
				touchDeltaX: 0,
			};

			if ( ! state.cards ) {
				return;
			}

			function buildDots() {
				var count = state.cards.children.length;

				state.dotsWrap = document.createElement( 'div' );
				state.dotsWrap.className = 'slider-dots';

				for ( var i = 0; i < count; i++ ) {
					var dot = document.createElement( 'button' );
					dot.type = 'button';
					dot.className = 'slider-dot' + ( 0 === i ? ' active' : '' );
					dot.setAttribute( 'aria-label', 'Aller à la carte ' + ( i + 1 ) );
					( function ( index ) {
						dot.addEventListener( 'click', function () {
							goTo( index );
						} );
					} )( i );
					state.dotsWrap.appendChild( dot );
					state.dots.push( dot );
				}

				state.clip.insertAdjacentElement( 'afterend', state.dotsWrap );
			}

			function goTo( index ) {
				var card = state.cards.children[ index ];
				if ( ! card ) {
					return;
				}
				state.current = index;
				state.cards.style.transform = 'translateX(-' + card.offsetLeft + 'px)';
				state.dots.forEach( function ( dot, i ) {
					dot.classList.toggle( 'active', i === index );
				} );
			}

			function onTouchStart( event ) {
				state.touchStartX = event.touches[ 0 ].clientX;
				state.touchDeltaX = 0;
			}

			function onTouchMove( event ) {
				state.touchDeltaX = event.touches[ 0 ].clientX - state.touchStartX;
			}

			function onTouchEnd() {
				var threshold = 40;
				if ( state.touchDeltaX < -threshold && state.current < state.cards.children.length - 1 ) {
					goTo( state.current + 1 );
				} else if ( state.touchDeltaX > threshold && state.current > 0 ) {
					goTo( state.current - 1 );
				}
				state.touchDeltaX = 0;
			}

			function initSlider() {
				if ( state.clip ) {
					return;
				}

				state.clip = document.createElement( 'div' );
				state.clip.className = 'slider-clip';
				state.cards.parentNode.insertBefore( state.clip, state.cards );
				state.clip.appendChild( state.cards );

				state.dots = [];
				buildDots();

				state.cards.style.transform = 'translateX(0px)';
				state.current = 0;

				state.clip.addEventListener( 'touchstart', onTouchStart, { passive: true } );
				state.clip.addEventListener( 'touchmove', onTouchMove, { passive: true } );
				state.clip.addEventListener( 'touchend', onTouchEnd );
			}

			function destroySlider() {
				if ( ! state.clip ) {
					return;
				}

				state.clip.removeEventListener( 'touchstart', onTouchStart );
				state.clip.removeEventListener( 'touchmove', onTouchMove );
				state.clip.removeEventListener( 'touchend', onTouchEnd );

				state.cards.style.transform = '';
				state.clip.parentNode.insertBefore( state.cards, state.clip );
				state.clip.parentNode.removeChild( state.clip );

				if ( state.dotsWrap && state.dotsWrap.parentNode ) {
					state.dotsWrap.parentNode.removeChild( state.dotsWrap );
				}

				state.clip = null;
				state.dotsWrap = null;
				state.dots = [];
				state.current = 0;
			}

			function handleBreakpoint( e ) {
				if ( e.matches ) {
					initSlider();
				} else {
					destroySlider();
				}
			}

			handleBreakpoint( mql );
			mql.addEventListener( 'change', handleBreakpoint );
		} );
	} );
} )();
