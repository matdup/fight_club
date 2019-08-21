import "bootstrap";
import { flatpicker } from "../components/flat_picker";
import { reviewArena } from "../components/review_arena";
import { previewImageOnFileSelect } from "../components/preview_photo";
import { loadDynamicBannerText } from '../components/banner';
import { initUpdateNavbarOnScroll } from '../components/navbar';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { initAutocomplete } from '../plugins/init_autocomplete';

reviewArena();
previewImageOnFileSelect();
loadDynamicBannerText();
initUpdateNavbarOnScroll();
flatpicker();
initMapbox();
initAutocomplete();
