package com.izitable.dao;

import java.util.List;

import com.izitable.model.Pager;
import com.izitable.model.Booking;

public interface BookingDao {

	void add(Booking item);

	List<Booking> userBookingList(int userNo);

	void delUserBooking(int bookingId);

}
