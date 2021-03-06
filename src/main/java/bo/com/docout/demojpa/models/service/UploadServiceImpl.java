package bo.com.docout.demojpa.models.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.stereotype.Service;
import org.springframework.util.FileSystemUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.net.MalformedURLException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

@Service
public class UploadServiceImpl implements IUploadFileService {


    private final static String UPLOAD_FOLDER = "uploads";
    private final Logger log = LoggerFactory.getLogger(getClass());

    @Override
    public Resource load(String filename) throws MalformedURLException {

        Path pathFoto = getPath(filename);
        log.info("Path FOTO" + pathFoto);
        Resource recurso = null;
        recurso = new UrlResource(pathFoto.toUri());
        if ( !recurso.exists() || !recurso.isReadable() ) {
            throw new RuntimeException("Error no se puede cargar la imagen: " +pathFoto.toString());
        }
        return recurso;
    }

    @Override
    public String copy(MultipartFile file) throws IOException {
        String uniqueFilename = UUID.randomUUID().toString() + file.getOriginalFilename();
        Path rootPath = getPath(uniqueFilename);
        Files.copy(file.getInputStream(), rootPath);
        return uniqueFilename;
    }

    @Override
    public Boolean delete(String filename) {
        Path rootPath = getPath(filename);
        File archivo = rootPath.toFile();
        if ( archivo.exists() && archivo.canRead() ){
            if ( archivo.delete()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void deleteAll() {
        FileSystemUtils.deleteRecursively(Paths.get(UPLOAD_FOLDER).toFile());
    }

    @Override
    public void init() throws IOException {
        Files.createDirectory(Paths.get(UPLOAD_FOLDER));
    }

    public Path getPath(String filename) {
        Path pathFoto = Paths.get(UPLOAD_FOLDER).resolve(filename).toAbsolutePath();

        return pathFoto;
    }
}
