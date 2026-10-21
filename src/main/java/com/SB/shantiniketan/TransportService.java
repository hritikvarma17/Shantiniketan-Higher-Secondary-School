package com.SB.shantiniketan;

import java.util.List;
import org.springframework.web.multipart.MultipartFile;

public interface TransportService {
 
	List<Transport> getAllTransport();
    void saveTransport(Transport transport, MultipartFile file) throws Exception; 
    Transport getTransportById(int id); 
    void updateTransport(Transport transport, MultipartFile file) throws Exception; 
    void deleteTransport(int id); 
    List<Transport> searchTransport(String keyword);
}