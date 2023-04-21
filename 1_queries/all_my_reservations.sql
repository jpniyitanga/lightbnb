SELECT r.id, p.title, r.start_date, p.cost_per_night, AVG(pr.rating) AS average_rating
FROM properties p
JOIN reservations r ON p.id = r.property_id
JOIN property_reviews pr ON r.id = pr.reservation_id
WHERE r.guest_id = 1
GROUP BY p.id, r.id
ORDER BY r.start_date
LIMIT 10;git reset