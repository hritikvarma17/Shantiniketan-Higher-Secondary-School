package com.SB.shantiniketan;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class TransportServiceImpl implements TransportService {

	@Autowired
	private TransportRepository transportRepository;

	@Override
	public List<Transport> getAllTransport() {
		return transportRepository.findAll();
	}

	@Override
	public void saveTransport(Transport transport, MultipartFile file) throws Exception {
		if (file != null && !file.isEmpty()) {
			transport.setVehicleImage(file.getBytes()); // Convert uploaded file to byte array
		}
		transportRepository.save(transport);
	}

	@Override
	public Transport getTransportById(int id) {
		return transportRepository.findById(id).orElse(null);
	}

	@Override
	public void updateTransport(Transport transport, MultipartFile file) throws Exception {
		if (file != null && !file.isEmpty()) {
			transport.setVehicleImage(file.getBytes());
		} else {
			// Retain existing image if no new file is uploaded during update
			Transport existingTransport = getTransportById(transport.getTransportId());
			if (existingTransport != null) {
				transport.setVehicleImage(existingTransport.getVehicleImage());
			}
		}
		transportRepository.save(transport);
	}

	@Override
	public void deleteTransport(int id) {
		transportRepository.deleteById(id);
	}

	@Override
	public List<Transport> searchTransport(String keyword) {
		return transportRepository.searchTransport(keyword);
	}
}