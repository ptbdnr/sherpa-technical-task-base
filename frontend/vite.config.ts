
import { defineConfig, loadEnv } from "vite";
import react from "@vitejs/plugin-react-swc";


// https://vitejs.dev/config/
export default defineConfig((command, mode) => {
  // Load environment variables from .env file
  const env = loadEnv(mode, process.cwd(), "");
  
  const banckendUrl = env.VITE_BACKEND_BASE_URL;
  console.log("Using backend URL:", banckendUrl);

  return {
    plugins: [react()],
    server: {
      port: 5173,
      proxy: {
        // Forward backend calls during dev
        "/chat": {
          target: banckendUrl,
          changeOrigin: true,
        },
        "/documents": {
          target: banckendUrl,
          changeOrigin: true,
        },
      }
    }
  };
});
