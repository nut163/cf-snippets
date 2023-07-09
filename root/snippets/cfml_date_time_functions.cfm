<!--- Date and Time Functions in CFML --->

<cfscript>
    // Get the current date and time
    currentDateTime = Now();

    // Get the current date
    currentDate = DateFormat(Now(), "mm/dd/yyyy");

    // Get the current time
    currentTime = TimeFormat(Now(), "hh:mm:ss");

    // Add 5 days to the current date
    futureDate = DateAdd("d", 5, Now());

    // Subtract 2 hours from the current time
    pastTime = DateAdd("h", -2, Now());

    // Compare two dates
    date1 = "2022/01/01";
    date2 = "2022/12/31";
    dateComparison = DateCompare(date1, date2);

    // Convert a string to a date
    dateString = "2022/01/01";
    convertedDate = ParseDateTime(dateString);

    // Get the day of the week
    dayOfWeek = DayOfWeek(Now());

    // Get the day of the year
    dayOfYear = DayOfYear(Now());

    // Get the week of the year
    weekOfYear = Week(Now());

    // Get the number of days in a month
    daysInMonth = DaysInMonth(Now());

    // Get the number of days in a year
    daysInYear = DaysInYear(Now());

    // Get the first day of the month
    firstDayOfMonth = FirstDayOfMonth(Now());

    // Get the last day of the month
    lastDayOfMonth = LastDayOfMonth(Now());

    // Get the first day of the week
    firstDayOfWeek = FirstDayOfWeek(Now());

    // Get the last day of the week
    lastDayOfWeek = LastDayOfWeek(Now());

    // Get the first day of the year
    firstDayOfYear = FirstDayOfYear(Now());

    // Get the last day of the year
    lastDayOfYear = LastDayOfYear(Now());
</cfscript>