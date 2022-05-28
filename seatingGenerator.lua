-- tell people that as long as you or your date rsvped its fine
-- please name everyone by first and last name
-- allow opt out for fee? - if big donor

--test

local seatingInfo = {}
for line in io.lines("/home/edwin/Downloads/seatingInfo.csv") do
    local name, date, diet, datediet, alumni, first, second, third, datefirst, datesecond, datethird, never, datenever = line:match("%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-)")
    seatingInfo[#seatingInfo + 1] = { name = name, date = date, diet = diet, datediet = datediet, alumni = alumni, datealumni = datealumni, first = first, second = second, third = third, datefirst = datefirst, datesecond = datesecond, datethird = datethird, never = never, datenever = datenever }
end

print(seatingInfo[10].datefirst)

-- conform names
-- -- create new table
-- -- split up dates and attendants in big list, noting who is whose date
-- -- check new list AND seating pref names for conformity using similarity algorithm w/ aided manual review
-- -- conform names using above
-- -- eliminate duplicate rsvps (for multiple rsvps or dates who also rsvped)
-- -- -- what if multiple rsvps have different dates, or no dates? or different info re food etc. (favor last rsvp)
-- -- -- what if alumni/current mixed student rsvp?

-- remove people's first prefs who are the same names as their dates lol
-- make sure that each person's date is their date

-- input table size(s), number of tables

-- arrange big table -- seat speaker with friends

-- arrange alumni tables
-- -- try a few times randomly via crude genetic algorithm (re whose first first goes first etc.)
-- arrange current student tables
-- -- try a few times randomly via crude genetic algorithm (re whose first first goes first etc.)

-- Produce useful summaries
-- seating chart
-- dietary issues

-- what if people don't have preferences
-- manual additions to guests (speakers etc)
-- check to make sure donors are seated well
