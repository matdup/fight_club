import "bootstrap";
import flatpickr from "flatpickr";
import { reviewArena } from "../components/review_arena";
import { previewImageOnFileSelect } from "../components/preview_photo";
import { loadDynamicBannerText } from '../components/banner';
import { initUpdateNavbarOnScroll } from '../components/navbar';
flatpickr("#booking_start_at", {});
flatpickr("#ends_start_at", {});
reviewArena();
previewImageOnFileSelect();
loadDynamicBannerText();
initUpdateNavbarOnScroll();

