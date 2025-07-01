import mysql from "mysql2/promise";

export const db = mysql.createPool({
  host: "localhost",
  user: "root",
  password: "Satinder@123",
  database: "hospital_db",
});

try {
  const connection = await db.getConnection();
  console.log(`✅ Database connected successfully!`);
  connection.release();
} catch (error) {
  console.log(`❌ Error Connecting to Database: ${error}`);
  process.exit(1);
}
