# Spring-Security-login-form


1. Designed Custom login form using Spring, bootstrap , HTML and CSS where employees are first `authenticated` with form fields for username and password

2. Employees are `authorized` to access links(pages) based on the roles assigned to them using Spring Security. 

   ..Restrict path to employees antMatches("/").hasRoles("Employee")

    ..Restrict path to employees antMatches("/leaders/").hasRoles("manager")

 Restrict path to employees antMatches("/systems").hasRoles("admin")

3. Used Maven for Spring MVC Web application and Spring Security(spring-security-web and spring-security-config) dependencies

4. Add logout support for spring security configuration

# Security

1. **CROSS SITE REQUEST FORGERY (CSFR**) are taken care with use Spring MVC form <form : form> tags which provides automatic support for Spring Security

2. Password are encrypted in the database using **bcrypt algorithm**
+ Perform one way encryption
+ Add random salt to password fpr additional protection
+ Include support to defeat brute force attacks



![11ScreenCapture_24-08-2019-15 48 13](https://user-images.githubusercontent.com/26305085/63643084-b2954880-c697-11e9-8ffd-b01a67aa9f87.gif)





