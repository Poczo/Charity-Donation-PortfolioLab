package pl.coderslab.charity.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.coderslab.charity.entity.Donation;

public interface DonationRepository extends JpaRepository<Donation, Long> {
    @Query("SELECT coalesce(SUM(d.quantity), 0) FROM Donation d")
    long sumAllBagsFromDonations();

    @Query("SELECT COUNT(d) FROM Donation d")
    long sumOfAllDonations();
}
