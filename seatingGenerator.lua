-- instructions:
-- 1. Everyone gets to bring one guest who you're guaranteed to sit next to (either from the club or outside the club). There is no need for both a person and their date to RSVP.
-- 2. Please list all names with full first and last names.
-- 3. Have you moved and need to give us a new address? [second to last rsvp q, not picked up in array]
-- 4. Has your email changed? [last rsvpify q, not picked up in array]

local rsvpResponse = {}

for line in io.lines("/home/edwin/Downloads/rsvpInfo.csv") do
	local name, date, diet, dateDiet, alumni, dateAlumni, first, second, third, dateFirst, dateSecond, dateThird, never, dateNever = line:match("%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-),%s*(.-)")
	rsvpResponse[#rsvpResponse + 1] = { name = name, date = date, diet = diet, dateDiet = dateDiet, alumni = alumni, dateAlumni = dateAlumni, first = first, second = second, third = third, dateFirst = dateFirst, dateSecond = dateSecond, dateThird = dateThird, never = never, dateNever = dateNever }
end

local guests = {}

for i=1, #rsvpResponse do
    local name, diet, alumni, first, second, third, never, date = rsvpResponse[i].name, rsvpResponse[i].diet, rsvpResponse[i].alumni, rsvpResponse[i].first, rsvpResponse[i].second, rsvpResponse[i].third, rsvpResponse[i].never, rsvpResponse[i].date
    
    guests[#guests+1] = {name = name, diet = diet, alumni = alumni, first = first, second = second, third = third, never = never, date = date}
    
    local name, diet, alumni, first, second, third, never, date = rsvpResponse[i].date, rsvpResponse[i].dateDiet, rsvpResponse[i].dateAlumni, rsvpResponse[i].dateFirst, rsvpResponse[i].dateSecond, rsvpResponse[i].dateThird, rsvpResponse[i].dateNever, rsvpResponse[i].name
    
    guests[#guests+1] = {name = name, diet = diet, alumni = alumni, first = first, second = second, third = third, never = never, date = date}
end



-- conform names - check for diff spellings re seating preferences, dates
-- check dates who aren't listed, and prefs who aren't listed
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
