import mysql from "mysql2/promise";

export const db = mysql.createPool({
  host: process.env.DB_HOST,
  port: Number(process.env.DB_PORT),
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
  ssl: {
    rejectUnauthorized: true,
  },
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
