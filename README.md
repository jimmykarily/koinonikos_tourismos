# Καταλύματα κοινονικού τουρισμού

Το συγκεκριμένο project χρησιμοποιεί τα δημοσιοποιημένα καταλύματα από τον ΟΑΕΔ
([σελίδα ΟΑΕΔ](http://www.oaed.gr/koinonikos-tourismos-2016-2017), [καταλύματα](http://www.oaed.gr/documents/10195/1376087/PAROXOIEGKEKRIMENOI%282%29.xls/1988c4ce-f1bc-49bb-adaa-4f0a16530c35)) και τα εμφανίζει σε ένα χάρτη Google για ευκολότερη αναζήτηση.

## paroxoi.ods
Ο spreadsheet των παρόχων σε ods μορφή

## paroxoi.csv
Το ίδιο αρχείο σε CSV μορφή

## run.rb

Εκτελέσιμο αρχείο Ruby που κάνει requests στο Google Maps API για να βρει τις
συντεταγμένες κάθε καταλύματος με βάση το όνομα και την καταχωρημένη του διεύθυνση.
Στο τέλος δημιουργεί το αρχείο data.js με τα δεδομένα σε json μορφή.

## data.js

Το αρχείο αυτό δημιουργήθηκε από το run.rb

## index.html

Η σελίδα με τα καταλύματα. Ανοίγετε αυτό το αρχείο με τον browser και διαλέγετε
με βάση την τοποθεσία από τον χάρτη. Με δεξί κλικ στο όνομα ενός ξενοδοχείου (όχι στο pin)
μπορείτε να το ανοίξετε στο google maps και να δείτε φωτογραφίες κτλ.

Καλές διακοπές!