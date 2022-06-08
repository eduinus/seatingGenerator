-- instructions:
-- 1. Everyone gets to bring one guest who you're guaranteed to sit next to (either from the club or outside the club). There is no need for both a person and their date to RSVP.
-- 2. Please list all names with full first and last names.
-- 3. Have you moved and need to give us a new address? [second to last rsvp q, not picked up in array]
-- 4. Has your email changed? [last rsvpify q, not picked up in array]

local rsvpResponse = {}
for line in io.lines("/home/edwin/Downloads/rsvpInfo.csv") do
	local name, date, diet, datediet, alumni, first, second, third, datefirst, datesecond, datethird, never, datenever = line:match("%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-)")
	rsvpResponse[#rsvpResponse + 1] = { name = name, date = date, diet = diet, datediet = datediet, alumni = alumni, datealumni = datealumni, first = first, second = second, third = third, datefirst = datefirst, datesecond = datesecond, datethird = datethird, never = never, datenever = datenever }
end

function substCompare (name1, name2)
	if strlen(name1) <= strlen(name2) then
		testName = name1
	else
		testName = name2
	end
	for i=1, #
end

-- print(rsvpResponse[32].date)

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
