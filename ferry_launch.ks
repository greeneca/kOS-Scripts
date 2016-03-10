PRINT "========================".
PRINT "Launching Ferry".
PRINT "Sub-orbital launch".
PRINT "========================".

LOCK THROTTLE TO 1.

SET MYHEADING TO HEADING(90, 90).
LOCK STEERING TO MYHEADING.

WHEN ALTITUDE > 2000 THEN {
  SET MYHEADING TO HEADING(90, 88).
}.
UNTIL SHIP:OBT:APOAPSIS > 70500 {
  IF SHIP:MAXTHRUST = 0 {
    PRINT "Staging".
    STAGE.
  }.
}.

PRINT "Target Apoposis Reached".

LOCK THROTTLE TO 0.

WAIT UNTIL ALTITUDE < 15000.

PRINT "Starting Landing Proceedure".

LOCK THROTTLE TO 1.

WAIT UNTIL SHIP:AIRSPEED < 250.

PRINT "Activate Shutes".

STAGE.

LOCK THROTTLE TO 0.
SET SHIP:CONTROL:PILOTMAINTHROTTLE TO 0.

WAIT 2.





