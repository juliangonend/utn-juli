import os
import shutil

downloadFolder = r"C:\Users\Usuario\Downloads"  
facultadFolder = r"C:\Users\Usuario\Documents\Utn\Material"

if __name__ == "__main__":
    for filename in os.listdir(downloadFolder):
        name, extension = os.path.splitext(filename)
        if extension in [".pdf", ".docx", ".xlsx",".sql", ".pptx"]:
            # Construye las rutas completas de origen y destino
            src_path = os.path.join(downloadFolder, filename)
            dst_path = os.path.join(facultadFolder, filename)
            
          
            shutil.move(src_path, dst_path)