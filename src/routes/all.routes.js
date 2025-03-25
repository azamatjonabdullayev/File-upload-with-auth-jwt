import authRoutes from "./auth.routes.js";
import uploadRoutes from "./posts.routes.js";

const getAllRoutes = () => [authRoutes, uploadRoutes];

export default getAllRoutes;
