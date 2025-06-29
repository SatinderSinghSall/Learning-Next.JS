import "../globals.css";
import NavigationBar from "../../components/NavigationBar";

export const metadata = {
  title: {
    default: "Satinder - Full-Stack Apps",
    template: "%s | Satinder Singh Sall",
  },
  description:
    "Free tutorials on React.js, Next.js, and web development by Satinder Singh Sall.",
  keywords: ["React", "Next.js", "Web Development", "Satinder Singh Sall"],
  icons: {
    icon: "/vercel.svg",
  },
  metadataBase: new URL("https://habit-club.vercel.app/"),
  openGraph: {
    title: "Satinder - Full-Stack Apps",
    description: "Join the best web dev tutorials!",
    url: "https://yourdomain.com",
    siteName: "Satinder - Full-Stack Apps",
    images: [
      {
        url: "/og-image.png",
        width: 1200,
        height: 630,
        alt: "Satinder - Full-Stack Apps Logo",
      },
    ],
    type: "website",
  },
  twitter: {
    card: "summary_large_image",
    title: "TSatinder - Full-Stack Apps",
    description: "Learn Web Dev from scratch with Satinder Singh Sall!",
    creator: "@satindersinghsall",
    images: ["/og-image.png"],
  },
};

import { Roboto } from "next/font/google";

const robotoFont = Roboto({
  subsets: ["latin"],
});

export default function RootLayout({ children }) {
  return (
    <html>
      <body className={robotoFont.className}>
        <NavigationBar />

        {children}
      </body>
    </html>
  );
}
