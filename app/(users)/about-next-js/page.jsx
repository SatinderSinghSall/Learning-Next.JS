"use client";
import { useState } from "react";
import Link from "next/link";
import {
  BookOpen,
  Layers,
  Server,
  Image as ImageIcon,
  ArrowRight,
  Filter,
  Globe,
  Zap,
  Settings,
  Shield,
  Cloud,
} from "lucide-react";

const concepts = [
  {
    title: "Routing (Pages & App Router)",
    description:
      "Next.js uses a file-based routing system using the `pages/` or new `app/` directory. Dynamic routes and layouts are easy to manage.",
    link: "https://nextjs.org/docs/app/building-your-application/routing",
    level: "Basic",
    icon: <BookOpen className="w-5 h-5 text-blue-600" />,
  },
  {
    title: "Image Optimization",
    description:
      "The built-in `Image` component provides automatic image optimization and resizing for fast performance.",
    link: "https://nextjs.org/docs/app/building-your-application/optimizing/images",
    level: "Basic",
    icon: <ImageIcon className="w-5 h-5 text-green-600" />,
  },
  {
    title: "Metadata API",
    description:
      "Manage SEO metadata and Open Graph tags using a strongly typed `metadata` API in the `app/` directory.",
    link: "https://nextjs.org/docs/app/api-reference/functions/generate-metadata",
    level: "Basic",
    icon: <Filter className="w-5 h-5 text-purple-600" />,
  },
  {
    title: "API Routes",
    description:
      "Build serverless functions inside the `pages/api/` folder to handle backend logic directly in your app.",
    link: "https://nextjs.org/docs/pages/building-your-application/routing/api-routes",
    level: "Intermediate",
    icon: <Server className="w-5 h-5 text-yellow-500" />,
  },
  {
    title: "Middleware",
    description:
      "Run code before requests are completed with `middleware.ts` for tasks like auth, redirects, and rewrites.",
    link: "https://nextjs.org/docs/app/building-your-application/routing/middleware",
    level: "Intermediate",
    icon: <Shield className="w-5 h-5 text-red-500" />,
  },
  {
    title: "Static Site Generation (SSG)",
    description:
      "Use `getStaticProps` to pre-render pages at build time for fast delivery and scalability.",
    link: "https://nextjs.org/docs/pages/building-your-application/data-fetching/get-static-props",
    level: "Intermediate",
    icon: <Globe className="w-5 h-5 text-indigo-500" />,
  },
  {
    title: "Edge Functions",
    description:
      "Run your code close to users at the edge with low-latency functions using Next.js Edge runtime.",
    link: "https://nextjs.org/docs/app/building-your-application/routing/edge-functions",
    level: "Advanced",
    icon: <Zap className="w-5 h-5 text-pink-600" />,
  },
  {
    title: "Server Components",
    description:
      "Offload logic to the server with Server Components, reducing client-side bundle size and improving performance.",
    link: "https://nextjs.org/docs/app/building-your-application/rendering/server-components",
    level: "Advanced",
    icon: <Layers className="w-5 h-5 text-orange-500" />,
  },
  {
    title: "Incremental Static Regeneration (ISR)",
    description:
      "Update static pages in the background while serving a cached version using ISR, with zero downtime.",
    link: "https://nextjs.org/docs/pages/building-your-application/data-fetching/incremental-static-regeneration",
    level: "Advanced",
    icon: <Settings className="w-5 h-5 text-sky-600" />,
  },
  {
    title: "App Directory Architecture",
    description:
      "The new `app/` directory supports layouts, templates, loading UI, and nested routing in a modular way.",
    link: "https://nextjs.org/docs/app/building-your-application/routing/pages-and-layouts",
    level: "Advanced",
    icon: <Cloud className="w-5 h-5 text-gray-600" />,
  },
];

const levels = ["All", "Basic", "Intermediate", "Advanced"];

const AboutNextJs = () => {
  const [selectedLevel, setSelectedLevel] = useState("All");

  const filteredConcepts =
    selectedLevel === "All"
      ? concepts
      : concepts.filter((c) => c.level === selectedLevel);

  return (
    <main className="min-h-screen bg-white px-6 py-20">
      <div className="max-w-6xl mx-auto">
        <h1 className="text-5xl font-bold text-gray-900 mb-3">
          📘 About Next.js
        </h1>
        <p className="text-lg text-gray-600 mb-10 max-w-2xl">
          Next.js is a React framework with server-side rendering, API routes,
          edge functions, and a powerful routing model. Explore the core
          concepts categorized by skill level.
        </p>

        {/* Filter Buttons */}
        <div className="flex flex-wrap gap-3 mb-10">
          {levels.map((level) => (
            <button
              key={level}
              onClick={() => setSelectedLevel(level)}
              className={`px-4 py-2 rounded-full text-sm font-medium border ${
                selectedLevel === level
                  ? "bg-blue-600 text-white border-blue-600"
                  : "text-gray-700 border-gray-300 hover:bg-gray-100"
              } transition`}
            >
              {level}
            </button>
          ))}
        </div>

        {/* Concepts Grid */}
        <section className="grid sm:grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {filteredConcepts.map((concept, idx) => (
            <div
              key={idx}
              className="border border-gray-200 p-6 rounded-2xl bg-gray-50 hover:shadow-lg transition group"
            >
              <div className="flex items-center gap-3 mb-2">
                {concept.icon}
                <h2 className="text-lg font-semibold text-gray-900">
                  {concept.title}
                </h2>
              </div>
              <p className="text-gray-600 text-sm mb-4">
                {concept.description}
              </p>
              <div className="flex justify-between items-center">
                <Link
                  href={concept.link}
                  target="_blank"
                  className="text-sm font-medium text-blue-600 hover:underline flex items-center gap-1"
                >
                  Learn more <ArrowRight className="w-4 h-4" />
                </Link>
                <span className="text-xs px-2 py-1 bg-gray-200 rounded-full text-gray-700">
                  {concept.level}
                </span>
              </div>
            </div>
          ))}
        </section>
      </div>
    </main>
  );
};

export default AboutNextJs;
