-- instructions:
-- 1. Everyone gets to bring one guest who you're guaranteed to sit next to (either from the club or outside the club). There is no need for both a person and their date to RSVP.
-- 2. Please list all names with full first and last names.
-- 3. Have you moved and need to give us a new address? [second to last rsvp q, not picked up in array]
-- 4. Has your email changed? [last rsvpify q, not picked up in array]

function searchGuests (search, term)
    for i=1, #guests do
        if guests.search == term then
            return i
        end
    end
    return false
end

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

for i=1, #guests do
    local guest = guests[i]
    print(guest.name)
    if guest.date ~= nil then
        if searchGuests(date, guest.date) ~= false then
            print(guest.date)
        else
            print(guest.name.."'s date, ")
        end
    end
end

-- check prefs who aren't listed/spelled differently, check date duplicate rsvps, check people with two dates, in the case of conflicting info on food or dates prefs etc, err on side of later rsvp
-- remove people who chose dates as first seating pref
-- make sure that each persons date is also their date
-- what if alumni/current mixed student rsvp?

-- input table size(s), number of tables

-- arrange big table -- seat speaker with friends

-- arrange alumni tables
-- -- try a few times randomly via crude genetic algorithm (re whose first first goes first etc.)
-- arrange current student tables

-- Produce useful summaries
-- seating chart
-- dietary issues

-- what if people don't have preferences
-- manual additions to guests (speakers etc)
-- check to make sure donors are seated well
