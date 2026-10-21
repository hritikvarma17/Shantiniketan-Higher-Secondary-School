package com.SB.shantiniketan;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class StaffServiceImpl implements StaffService {

	@Autowired
	private StaffRepository staffRepository;

	@Override
	public List<Staff> getAllStaff() {
		return staffRepository.findAll();
	}

	@Override
	public void saveStaff(Staff staff, MultipartFile file) throws Exception {
		if (file != null && !file.isEmpty()) {
			staff.setPassportPhoto(file.getBytes()); // Convert MultipartFile to byte[]
		}
		staffRepository.save(staff);
	}

	@Override
	public Staff getStaffById(int id) {
		return staffRepository.findById(id).orElse(null);
	}

	@Override
	public void updateStaff(Staff staff, MultipartFile file) throws Exception {
		if (file != null && !file.isEmpty()) {
			staff.setPassportPhoto(file.getBytes());
		} else {
			// Retain existing photo if no new file is uploaded during update
			Staff existingStaff = getStaffById(staff.getStaffId());
			if (existingStaff != null) {
				staff.setPassportPhoto(existingStaff.getPassportPhoto());
			}
		}
		staffRepository.save(staff);
	}

	@Override
	public void deleteStaff(int staff_id) {
		staffRepository.deleteById(staff_id);
	}

	@Override
	public List<Staff> searchStaff(String keyword) {
		return staffRepository.searchStaff(keyword);
	}

//	@Override
//	public List<Staff> searchByName(String first_name) {
//
//		return staffRepository.findByNameContainingIgnoreCase(first_name);
//
//	}

}