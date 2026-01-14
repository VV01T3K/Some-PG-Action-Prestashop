/**
 * Product Images Gallery - Action.com style
 * Handles mobile thumbnail navigation and carousel scrolling
 * Handles modal gallery view
 */

document.addEventListener('DOMContentLoaded', function() {
  // Mobile thumbnail navigation
  const mobileCarousel = document.querySelector('.product-main-carousel');
  const mobileThumbs = document.querySelectorAll('.js-mobile-thumb');

  if (mobileCarousel && mobileThumbs.length > 0) {
    // Handle thumbnail clicks - scroll to corresponding image
    mobileThumbs.forEach((thumb, index) => {
      thumb.addEventListener('click', function() {
        const targetId = this.getAttribute('data-scroll-to');
        const targetElement = document.getElementById(targetId);

        if (targetElement) {
          // Scroll to the target image
          targetElement.scrollIntoView({
            behavior: 'smooth',
            block: 'nearest',
            inline: 'start'
          });

          // Update active thumbnail
          updateActiveThumbnail(index);
        }
      });
    });

    // Update active thumbnail on scroll
    let scrollTimeout;
    mobileCarousel.addEventListener('scroll', function() {
      clearTimeout(scrollTimeout);
      scrollTimeout = setTimeout(() => {
        const scrollLeft = mobileCarousel.scrollLeft;
        const itemWidth = mobileCarousel.children[0].offsetWidth;
        const currentIndex = Math.round(scrollLeft / itemWidth);
        updateActiveThumbnail(currentIndex);
      }, 100);
    });

    function updateActiveThumbnail(activeIndex) {
      mobileThumbs.forEach((thumb, index) => {
        if (index === activeIndex) {
          thumb.classList.add('border-dark-blue', 'border-b-2');
        } else {
          thumb.classList.remove('border-dark-blue', 'border-b-2');
        }
      });
    }
  }

  // Modal Gallery Functionality
  const modalRoot = document.getElementById('modal-root');
  const modalOverlay = document.getElementById('image-gallery-modal');
  const modalContent = document.getElementById('modal-content');
  const modalScrim = document.getElementById('modal-scrim');
  const closeButton = document.getElementById('modal-close-button');
  const desktopImageButtons = document.querySelectorAll('.js-thumb-trigger');

  // Function to open modal
  function openModal() {
    if (modalRoot && modalOverlay && modalContent) {
      // Calculate scrollbar width before hiding it
      const scrollbarWidth = window.innerWidth - document.documentElement.clientWidth;

      // Show modal
      modalRoot.classList.remove('hidden');
      modalRoot.style.display = 'block';

      // Prevent body scroll and compensate for scrollbar
      document.body.style.overflow = 'hidden';
      if (scrollbarWidth > 0) {
        document.body.style.paddingRight = scrollbarWidth + 'px';
      }

      // Trigger animations after a brief delay
      setTimeout(() => {
        modalOverlay.classList.remove('opacity-0');
        modalOverlay.classList.add('opacity-100');
        modalContent.classList.remove('translate-y-full', 'md:scale-95');
        modalContent.classList.add('translate-y-0', 'md:scale-100');
      }, 10);
    }
  }

  // Function to close modal
  function closeModal() {
    if (modalRoot && modalOverlay && modalContent) {
      // Animate out
      modalOverlay.classList.remove('opacity-100');
      modalOverlay.classList.add('opacity-0');
      modalContent.classList.remove('translate-y-0', 'md:scale-100');
      modalContent.classList.add('translate-y-full', 'md:scale-95');

      // Hide after animation
      setTimeout(() => {
        modalRoot.classList.add('hidden');
        modalRoot.style.display = 'none';
        document.body.style.overflow = '';
        document.body.style.paddingRight = '';
      }, 200);
    }
  }

  // Desktop grid - click to open modal
  if (desktopImageButtons.length > 0) {
    desktopImageButtons.forEach((button) => {
      button.addEventListener('click', function() {
        openModal();
      });
    });
  }

  // Close button
  if (closeButton) {
    closeButton.addEventListener('click', closeModal);
  }

  // Close on scrim click
  if (modalScrim) {
    modalScrim.addEventListener('click', closeModal);
  }

  // Close on Escape key
  document.addEventListener('keydown', function(event) {
    if (event.key === 'Escape' && modalRoot && !modalRoot.classList.contains('hidden')) {
      closeModal();
    }
  });
});
