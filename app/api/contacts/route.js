import { db } from "@/config/db";

export async function GET(request) {
  try {
    const [rows] = await db.query("SELECT * FROM contact_form");
    return new Response(JSON.stringify(rows), { status: 200 });
  } catch (error) {
    console.error("❌ API Error:", error);
    return new Response(
      JSON.stringify({ message: "Failed to fetch contacts." }),
      { status: 500 }
    );
  }
}
