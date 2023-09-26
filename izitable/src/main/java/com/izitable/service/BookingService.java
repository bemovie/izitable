package com.izitable.service;

import java.util.List;

import com.izitable.model.Booking;

public interface BookingService {

	void add(Booking item);

	List<Booking> userBookingList(int userNo);

	void delUserBooking(int bookingId);

}
