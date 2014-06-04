var anchoredSection = $('.js-anchor');
var breakPoint1 = 900;
var contactButton = $('.js-contact-button');
var contactSection = $('.js-contact-section');
var contactSectionHeight = contactSection.height();
var contentMaxWidth = parseInt($('.js-wrap').css('max-width'))
var footer = $('.js-footer')
var footerHeight = footer.height();
var fadeIn = $('.js-fade-in');
var navLink = $('.js-nav-link');
var navItem = navLink.parent();
var onMobileDevice = /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent);


//


$(window).bind("scroll.scrollNav", function() { 
  if (!onMobileDevice) {
    checkCurrentSectionOnScroll()
  };
});

$(window).load(function() {
  fadeInPage();

  if (!onMobileDevice) {
    activateNavOnPageLoad();
    setHeaderSectionHeight();
    setContactSectionHeight();
  };
});

$(window).resize(function() {
  if (!onMobileDevice) {
    setHeaderSectionHeight();
    setContactSectionHeight();
  };
});

contactButton.click(scrollToContactSection);
navLink.click(function(){ activateLinkAndScrollToAnchor($(this)) });


//


function activateNavOnPageLoad() {
  $(window).scrollTop($(window).scrollTop() + 1);
  $(window).scrollTop($(window).scrollTop() - 1);
}

function activateLinkAndScrollToAnchor(clickedNavLink) {
  var activeNavLink = clickedNavLink;
  var activeNavItem = activeNavLink.parent();
  var targetAnchorName = clickedNavLink.data('anchor');
  var targetAnchorId = '#' + targetAnchorName;

  updateNav(activeNavLink, activeNavItem);
  
  $(window).unbind('.scrollNav');
  $('body').animate({ scrollTop: Math.ceil($(targetAnchorId).offset().top) }, 500,
    function() { 
      $(window).bind("scroll.scrollNav", function() { checkCurrentSectionOnScroll() });
  });
}

function checkCurrentSectionOnScroll() {
  anchoredSection.each(function() {
    var section = $(this);
    var sectionId = section.attr('id');
    var sectionNavLink = $('[data-anchor="' + sectionId + '"]');
    var sectionNavItem = sectionNavLink.parent();
    var sectionTop = section.offset().top;
    var sectionBottom = sectionTop + section.outerHeight();
    var windowScrollHeight = $(window).scrollTop();
    var windowBelowSectionTop = windowScrollHeight >= sectionTop;
    var windowAboveSectionBottom = windowScrollHeight < sectionBottom;
    var windowInsideSection = windowAboveSectionBottom && windowBelowSectionTop;
    var sectionNavNotActive = !sectionNavLink.hasClass('active');

    if (windowInsideSection) {
      updateNav(sectionNavLink, sectionNavItem);
    };
  });
}

function fadeInPage() {
  fadeIn.addClass('fade-in');
}

function setContactSectionHeight() {
  var contactSectionPadding = parseInt(contactSection.css('padding-top'))*2;
  var windowHeightMinusFooter = $(window).height() - footerHeight;
  var contactSectionLargerThanWindowHeightMinusFooter = contactSectionHeight < windowHeightMinusFooter;
  var windowWidth = $(window).width();
  var windowWide = windowWidth > breakPoint1;
  var contactSectionAdjustable = contactSectionLargerThanWindowHeightMinusFooter && windowWide;

  if (contactSectionAdjustable) {
    contactSection.height($(window).height() - footerHeight - contactSectionPadding);
  } else {
    contactSection.css('height', 'auto');
  }
}

function setHeaderSectionHeight() {
  var header = $('.js-header');
  var headerInner= $('.js-header-inner');
  var headerInnerHeight = headerInner.height();
  var windowHeight = $(window).height();
  var windowHeightMinusFooter = windowHeight - footerHeight;
  var windowWidth = $(window).width();
  var windowTall = windowHeightMinusFooter > headerInnerHeight;
  var windowWide = windowWidth > contentMaxWidth;
  var headerAdjustable = windowWide && windowTall;

  if (headerAdjustable) {
    header.height(windowHeightMinusFooter);
    header.removeClass('header-padding');
    header.addClass('header-unpadded');
    headerInner.css('padding-top', (windowHeightMinusFooter - headerInnerHeight)/2);
  } else {
    header.css('height', 'auto')
    header.removeClass('header-unpadded');
    header.addClass('header-padding');
    headerInner.css('padding-top', 0);
  }
}

function scrollToContactSection() {
  $(window).unbind('.scrollNav');
  $('body').animate({ scrollTop: Math.ceil(contactSection.offset().top) }, 500,
    function() {
      $(window).bind("scroll.scrollNav", function() { checkCurrentSectionOnScroll() });
    }
  );
}

function updateNav(currentNavLink, currentNavItem) {
  navLink.add(navItem).removeClass('active');
  currentNavLink.add(currentNavItem).addClass('active');
}
