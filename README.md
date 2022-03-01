# ktuais
An app for my university's academic Information System

## TODO
- Make main page a daily time table using cards for each subject.
- Update Account Info on drawer via API
- Determine what will be on the drawer
- Change notification icon to one with red dot if there is a notification
- Dark Mode in drawer
- Change drawerBtn return type to one that has an onPressed function but keeps its current UI
- Navigate to class with google maps API screen within app upon clicking address
- Timetable cards on homepage that can expand to show more details but I don't think this is needed

## Design
- Notification Icon links to notification page which is split into 
    - Messages
        - Contest notifications
    - Decrees
    - Warnings
- Drawer Contains
    - Dark Mode
    - Certificate Ordering
    - Contest Applications
    - Mentors
    - Consultations
    - Payments
        - Just need to create preliminary page that lists:
            - Outstanding 
            - Paid and their payment info.
        - and then link that to existing API to take it to a web page like apps normally do
    - Dormitory
    - Report/Ask
    - Settings if needed
        - Hide CGPA or just put an eye Icon to change CGPA to text or xxx

- Colors(Define in a file and refernece from there)
    - Primary Color: Purple
    - Secondary Color: Blue and Yellow
    - Base color: White/Black

- Home page is the time table for the day
- Navigate to class with google maps API screen within app upon clicking address
