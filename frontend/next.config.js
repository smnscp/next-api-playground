/** @type {import('next').NextConfig} */
const nextConfig = {
  experimental: {
    appDir: true,
  },
  rewrites: async () => ({
    fallback: [
      {
        source: "/packs/:path*",
        destination: `https://${process.env.HOST_API}/packs/:path*`,
      },
      {
        source: "/:path*",
        destination: `https://${process.env.HOST_API}/:path*`,
      },
    ],
  }),
};

module.exports = nextConfig;
