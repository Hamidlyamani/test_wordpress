/**
 * Mobile Menu — off-canvas nav toggled from the header's .menu_toggle button.
 *
 * - .menu_toggle click opens the menu (adds .is-open / aria-hidden="false" on
 *   #mobile-menu, .is-visible on the overlay, locks body scroll).
 * - .mobile-menu__close and the overlay close the menu.
 * - .sub-toggle buttons drive nested accordion submenus, animating
 *   max-height (based on scrollHeight) and swapping the +/− indicator.
 */
( function () {
	'use strict';

	var menu = document.getElementById( 'mobile-menu' );
	var toggleBtn = document.querySelector( '.menu_toggle' );
	var closeBtn = document.querySelector( '.mobile-menu__close' );
	var overlay = document.querySelector( '.mobile-menu__overlay' );

	if ( ! menu || ! toggleBtn ) {
		return;
	}

	function openMenu() {
		menu.classList.add( 'is-open' );
		menu.setAttribute( 'aria-hidden', 'false' );
		toggleBtn.setAttribute( 'aria-expanded', 'true' );
		if ( overlay ) {
			overlay.classList.add( 'is-visible' );
		}
		document.body.style.overflow = 'hidden';
	}

	function closeMenu() {
		menu.classList.remove( 'is-open' );
		menu.setAttribute( 'aria-hidden', 'true' );
		toggleBtn.setAttribute( 'aria-expanded', 'false' );
		if ( overlay ) {
			overlay.classList.remove( 'is-visible' );
		}
		document.body.style.overflow = '';
	}

	toggleBtn.addEventListener( 'click', function () {
		if ( menu.classList.contains( 'is-open' ) ) {
			closeMenu();
		} else {
			openMenu();
		}
	} );

	if ( closeBtn ) {
		closeBtn.addEventListener( 'click', closeMenu );
	}

	if ( overlay ) {
		overlay.addEventListener( 'click', closeMenu );
	}

	document.addEventListener( 'keydown', function ( event ) {
		if ( 'Escape' === event.key && menu.classList.contains( 'is-open' ) ) {
			closeMenu();
		}
	} );

	// Nested accordion submenus.
	var subToggles = menu.querySelectorAll( '.sub-toggle' );

	subToggles.forEach( function ( button ) {
		var item = button.closest( 'li' );
		var submenu = item ? item.querySelector( ':scope > .sub-menu' ) : null;
		var indicator = button.querySelector( '.indicator' );

		if ( ! submenu ) {
			return;
		}

		submenu.style.maxHeight = null;
		submenu.style.overflow = 'hidden';
		submenu.style.transition = 'max-height 0.3s ease';

		button.addEventListener( 'click', function () {
			var isOpen = submenu.classList.contains( 'open' );

			if ( isOpen ) {
				submenu.style.maxHeight = null;
				submenu.classList.remove( 'open' );
				if ( indicator ) {
					indicator.textContent = '+';
				}
			} else {
				submenu.classList.add( 'open' );
				submenu.style.maxHeight = submenu.scrollHeight + 'px';
				if ( indicator ) {
					indicator.textContent = '−';
				}
			}
		} );
	} );
} )();
