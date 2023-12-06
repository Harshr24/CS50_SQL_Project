import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Hack {
    public static void main(String[] args) throws Exception {
        Connection sqliteConnection = DriverManager.getConnection("jdbc:sqlite:dont-panic.db");

        Statement sqliteStatement = sqliteConnection.createStatement();

        sqliteStatement.executeUpdate("""
            UPDATE "users"
            SET "password" = 'hacked!'
            WHERE "username" = 'admin';
        """);

        sqliteConnection.close();
    }
}
