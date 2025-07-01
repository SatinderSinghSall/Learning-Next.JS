import mysql from "mysql2/promise";

export const db = mysql.createPool({
  host: process.env.DB_HOST || "localhost",
  user: process.env.DB_USER || "root",
  password: process.env.DB_PASSWORD || "Satinder@123",
  database: process.env.DB_NAME || "hospital_db",
});

if (process.env.NODE_ENV !== "development") {
  try {
    const connection = await db.getConnection();
    console.log(`✅ Database connected successfully!`);
    connection.release();
  } catch (error) {
    console.log(`❌ Error Connecting to Database: ${error}`);
    process.exit(1);
  }
}
