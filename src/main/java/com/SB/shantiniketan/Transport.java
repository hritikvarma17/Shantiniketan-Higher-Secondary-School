package com.SB.shantiniketan;

import jakarta.persistence.*;
import java.time.LocalDate;

@Entity
public class Transport {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int transportId;
	
	private String vehicleCompany;
	private String vehicleModel;
	
	@Column(name = "vehicle_image", columnDefinition = "LONGBLOB")
	private byte[] vehicleImage;
	
	private String numberPlateNo;
	private String driverName;
	private String driverMobileNo;
	private int seatingCapacity;
	private String acNonAc; 
	private LocalDate insuranceExpiryDate;
	private String status; 

	public Transport() {
	}

	public Transport(int transportId, String vehicleCompany, String vehicleModel, byte[] vehicleImage,
			String numberPlateNo, String driverName, String driverMobileNo, int seatingCapacity,
			String acNonAc, LocalDate insuranceExpiryDate, String status) {
		super();
		this.transportId = transportId;
		this.vehicleCompany = vehicleCompany;
		this.vehicleModel = vehicleModel;
		this.vehicleImage = vehicleImage;
		this.numberPlateNo = numberPlateNo;
		this.driverName = driverName;
		this.driverMobileNo = driverMobileNo;
		this.seatingCapacity = seatingCapacity;
		this.acNonAc = acNonAc;
		this.insuranceExpiryDate = insuranceExpiryDate;
		this.status = status;
	}

	public int getTransportId() {
		return transportId;
	}

	public void setTransportId(int transportId) {
		this.transportId = transportId;
	}

	public String getVehicleCompany() {
		return vehicleCompany;
	}

	public void setVehicleCompany(String vehicleCompany) {
		this.vehicleCompany = vehicleCompany;
	}

	public String getVehicleModel() {
		return vehicleModel;
	}

	public void setVehicleModel(String vehicleModel) {
		this.vehicleModel = vehicleModel;
	}

	public byte[] getVehicleImage() {
		return vehicleImage;
	}

	public void setVehicleImage(byte[] vehicleImage) {
		this.vehicleImage = vehicleImage;
	}

	public String getNumberPlateNo() {
		return numberPlateNo;
	}

	public void setNumberPlateNo(String numberPlateNo) {
		this.numberPlateNo = numberPlateNo;
	}

	public String getDriverName() {
		return driverName;
	}

	public void setDriverName(String driverName) {
		this.driverName = driverName;
	}

	public String getDriverMobileNo() {
		return driverMobileNo;
	}

	public void setDriverMobileNo(String driverMobileNo) {
		this.driverMobileNo = driverMobileNo;
	}

	public int getSeatingCapacity() {
		return seatingCapacity;
	}

	public void setSeatingCapacity(int seatingCapacity) {
		this.seatingCapacity = seatingCapacity;
	}

	public String getAcNonAc() {
		return acNonAc;
	}

	public void setAcNonAc(String acNonAc) {
		this.acNonAc = acNonAc;
	}

	public LocalDate getInsuranceExpiryDate() {
		return insuranceExpiryDate;
	}

	public void setInsuranceExpiryDate(LocalDate insuranceExpiryDate) {
		this.insuranceExpiryDate = insuranceExpiryDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}