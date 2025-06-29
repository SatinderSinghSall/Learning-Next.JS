export const metadata = {
  title: "Satinder - About Us",
  description:
    "Welcome to Satinder Build modern apps faster with Next.js and Tailwind CSS.",
  authors: [{ name: "Satinder Singh Sall" }, { name: "Vaibhav Soni" }],
  keywords: ["Next.JS", "React.JS"],
};

export default function AboutLayout({ children }) {
  return (
    <html>
      <body>{children}</body>
    </html>
  );
}
