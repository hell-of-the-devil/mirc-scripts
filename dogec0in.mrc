;Script made by hell of the devil
;for the use on #dogec0in on irc.ringoflightning.net
; how to use! all the options are done in the popup menus of mirc, just right click in the channel or nicklist and it is under the Dogec0in menu 


menu nicklist {
  $iif((($chan == #dogec0in) || ($chan == #dogec0in-vip)), $null, $style(2)) Dogec0in
  .Tip $1- $+ :/tip $1-
}

menu channel {
  $iif((($chan == #dogec0in) || ($chan == #dogec0in-vip)), $null, $style(2)) Dogec0in
  .Info: //msg wowsuchdoge info | /query wowsuchdoge
  .Create a tip account: //msg wowsuchdoge tipcreate | /query wowsuchdoge
}

alias tip {
  var %i 1
  set %sametoall $$?="Give them all the same amount? yes/no"

  if (%sametoall == yes) {
    set %amountofdoge $$?="How much doge would you like to send to them?"
    while (%i <= $0) {
      //msg $chan !tip $ [ $+ [ %i ] ] %amountofdoge
      inc %i
    }
  }

  if (%sametoall == no) {
    while (%i <= $0) {
      //msg $chan !tip $ [ $+ [ %i ] ] $$?="How much would you like to give $ [ $+ [ %i ] ] $+ ?"
      inc %i
    }
  }
}
