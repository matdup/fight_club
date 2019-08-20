import "bootstrap";
import { reviewArena } from "../components/review_arena";
import { previewImageOnFileSelect } from "../components/preview_photo";
import { loadDynamicBannerText } from '../components/banner';
import { initUpdateNavbarOnScroll } from '../components/navbar';
reviewArena();
previewImageOnFileSelect();
loadDynamicBannerText();
initUpdateNavbarOnScroll();
