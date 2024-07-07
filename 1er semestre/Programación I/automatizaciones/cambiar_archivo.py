from moviepy.editor import VideoFileClip

def convertir_avi_a_mp4(archivo_avi, archivo_mp4):
    # Cargar el archivo AVI
    clip = VideoFileClip(archivo_avi)

    # Guardar el archivo MP4
    clip.write_videofile(archivo_mp4, codec='libx264')

if __name__ == "__main__":
    # Ruta del archivo AVI de entrada
    archivo_avi_input = "C:\liga sub 14"

    # Ruta del archivo MP4 de salida
    archivo_mp4_output = "C:\liga sub 14"

    # Convertir el archivo AVI a MP4
    convertir_avi_a_mp4(archivo_avi_input, archivo_mp4_output)
