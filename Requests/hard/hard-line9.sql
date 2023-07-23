-------- TOTAL RESERVATION FOR EACH RESERVATION PER HOTEL
--->
    SELECT
        pr.name as promotion,
        ho.name as hotel,
        count(re.id) as reservation
    FROM "affiliate" aff
        INNER JOIN "room" ro ON aff.id_room = ro.id
        INNER JOIN "reservation" re ON re.id_room = ro.id
        INNER JOIN "promotion" pr ON aff.id_promotion = pr.id
        INNER JOIN "hotel" ho ON ro.id_hotel = ho.id
    GROUP BY pr.id, ho.id;
                        --->
