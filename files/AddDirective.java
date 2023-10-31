import java.io.*;

public class AddDirective {
    public static void main(String[] args) {
        String directive = "<%@page contentType=\"text/html\" pageEncoding=\"UTF-8\"%>";
        String directoryPath = "C:\\Users\\manikanta\\OneDrive\\Documents\\NetBeansProjects\\JPA\\web"; // Change this to the directory containing your files

        File directory = new File(directoryPath);
        File[] files = directory.listFiles();

        for (File file : files) {
            if (file.isFile() && file.getName().endsWith(".jsp")) {
                try {
                    BufferedReader reader = new BufferedReader(new FileReader(file));
                    String currentContent = "";
                    String line = reader.readLine();
                    while (line != null) {
                        currentContent += line + "\n";
                        line = reader.readLine();
                    }
                    reader.close();

                    BufferedWriter writer = new BufferedWriter(new FileWriter(file));
                    writer.write(directive + "\n" + currentContent);
                    writer.close();

                    System.out.println("Added directive to: " + file.getName());
                } catch (IOException e) {
                    System.err.println("Error processing file: " + file.getName());
                }
            }
        }
    }
}
