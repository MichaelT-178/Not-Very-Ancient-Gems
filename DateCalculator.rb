require 'date'
require_relative 'ColorText' #The file name

system("clear")

def get_school_difference(start_date, end_date)

    days_left_this_week = 0
    total_days = 0
    num_of_weeks = 0
    num_of_days_after = 0

    if start_date.nil? or end_date.nil?
        return ColorFormat.color(" ERROR", 'red') #ColorFormat is the class in ColorText.rb
    end

    current_date = start_date
    in_week = false

    while current_date <= end_date
        if current_date.wday == 1
            in_week = true
        end

        if (1..4).include?(current_date.wday)
            if !in_week
                days_left_this_week += 1
            end

            total_days += 1
        end

        if current_date.wday == 4
            if in_week
                num_of_weeks += 1
            end

            in_week = false
        end

        if current_date == end_date
            if (1..4).include?(current_date.wday) #if in range(4) that'd be a whole week
                num_of_days_after = current_date.wday
            end
        end

        current_date += 1
    end

    days_left_this_week = days_left_this_week > 0 ? " #{days_left_this_week} days left this week." : ""
    num_of_days_after = num_of_days_after > 0 ? " #{num_of_days_after} days." : "."

    return " = #{total_days} total days.#{days_left_this_week} #{num_of_weeks} weeks#{num_of_days_after}"
end


def get_time_difference(date1, date2)

    if date1.nil? or date2.nil?
        return ColorFormat.color(" ERROR", 'red')
    end

    time_difference = (date2 - date1).to_i

    return " = #{time_difference} total days. #{time_difference.div(7)} weeks #{time_difference % 7} days."
end


# Significant Dates
today = Date.today
fall_break = Date.new(2023, 10, 11) #Aug 31, 2023

second_period_start = Date.new(2023, 10, 15) > today ? Date.new(2023, 10, 15) : today
thanksgiving_break = Date.new(2023, 11, 21)

last_period_start = Date.new(2023, 11, 26) > today ? Date.new(2023, 11, 26) : today
last_exam_day = Date.new(2023, 12, 15)


if today <= fall_break
    print ColorFormat.color("\nDays until fall break", "magenta")
    puts get_time_difference(today, fall_break)
    print ColorFormat.color("School days until fall break", "magenta")
    puts get_school_difference(today, fall_break)
end

if today <= thanksgiving_break
    print ColorFormat.color("\nDays until Thanksgiving break", 'cyan')
    puts get_time_difference(second_period_start, thanksgiving_break)
    print ColorFormat.color('School days until Thanksgiving break', 'cyan')
    puts get_school_difference(second_period_start, thanksgiving_break)
end

if today <= last_exam_day
    print ColorFormat.color("\nDays until last exam", 'blue')
    puts get_time_difference(last_period_start, last_exam_day)
    print ColorFormat.color("School days until last exam", 'blue')
    puts get_school_difference(last_period_start, last_exam_day) + "\n\n"
end
