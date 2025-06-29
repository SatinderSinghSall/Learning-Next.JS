import "../globals.css";
import NavigationBar from "../../components/NavigationBar";

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body>
        <NavigationBar />
        {children}
      </body>
    </html>
  );
}
