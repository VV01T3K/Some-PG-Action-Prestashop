/**
 * Product Images Gallery - Action.com style
 * Handles mobile thumbnail navigation and carousel scrolling
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

  // Desktop grid - click to view larger (optional lightbox functionality)
  const desktopImageButtons = document.querySelectorAll('.js-thumb-trigger');

  if (desktopImageButtons.length > 0) {
    desktopImageButtons.forEach((button) => {
      button.addEventListener('click', function() {
        const largeImageUrl = this.getAttribute('data-image-large-src');

        // You can implement a lightbox/modal here if needed
        // For now, just log the action
        console.log('Image clicked:', largeImageUrl);

        // Optional: Open image in new tab
        // window.open(largeImageUrl, '_blank');
      });
    });
  }
});
