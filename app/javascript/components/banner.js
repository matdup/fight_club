import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Change your life", "Learn to fight"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
