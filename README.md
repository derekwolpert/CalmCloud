<a href="https://www.calmcloud.app/">
    <img src="./readme_images/calmcloud_logo.png" alt="CalmCloud logo" title="CalmCloud" align="right" height="60" />
</a>

# CalmCloud

CalmCloud, a clone of Mixcloud, is an online music streaming service for music lovers - a platform where users can upload, share and interact with audio content provided by the website's wider community. Built with React, Redux, JavaScript, and Ruby on Rails, supported by a PostgreSQL database and ASW S3 storage.

#### [This project is currently hosted at CalmCloud.app - CLICK HERE to visit the live version of this project](https://www.calmcloud.app/)

![CalmCloud Demo Gif](readme_images/calmcloud_gif.gif)

## Architecture & Technologies

* `React`, a JavaScript library used to assist with efficent managment of rapidly changing data and maintaining a single-page web application structure
* `Redux`, a JavaScript library used in coordination with `React` to create a centralized *store* for organizing and accessing data from 
* `JavaScript`, the project's frontend programing language
* `Ruby on Rails`, a web application framework used to provide server-side strucutre for querying and retrieval of data from database
* `Ruby`, the project's backend programing language
* `PostgreSQL`, a database system used storage and management of data
* `Webpack`, a JavaScript bundler to assist with development and production builds
* `CSS3` and `HTML5`, used to manage the presentation and styling of the project

<p align="middle">
    <img src="./readme_images/calmcloud_index.png" width="438" />
    <img src="./readme_images/calmcloud_track.png" width="438" />
</p>

## Features:

* Comprehensive **CRUD (create, read, update, delete) behavior** for **account creation**, **session managment**, **audio content distribution**, **text comments**, **content favoriting** and **user subcriptions**
* Integration with **AWS S3** for efficent storage and retrieval of **user uploaded audio and image files**
* **Error handling** for character count warnings, restrictions on forbidden usernames/track titles and qualifications for valid password/email inputs
* **Continuous audio playback** across multiple webpages
* Customized presentation depending on whether or not a user is logged-in, and what content that user has interacted with (e.g. user profile and audio track pages appear slightly different if the current logged-in user is the *owner* of the content on the page)
* A **polished and intutive user interface/experience** - including progress bars, user/track statistics, loading indicators, and dynamically updating favicon indicators

## Highlighted Features

### User Authentication and Session Errors 

<p align="middle">
    <img src="./readme_images/calmcloud_session.png" width="438" />
    <img src="./readme_images/calmcloud_error.png" width="438" />
</p>

```
def create

    @user = User.find_by_username(params[:user][:login], params[:user][:password])
    @user ||= User.find_by_email(params[:user][:login], params[:user][:password])

    if @user.nil?
        if User.find_by(username: params[:user][:login]) || User.find_by(email: params[:user][:login])
            render json: ["Incorrect password"], status: 401
        else
            if (params[:user][:login]).count("@") > 0 && (params[:user][:login]).split("@").last.count(".") > 0
                render json: ["There is no account registered with this email address. Please register."], status: 401
            else
                render json: ["Username does not exist"], status: 401
            end
        end
    else
        login!(@user)
    end
end

```

## Potential Future Features

* Impliment *DRY*-er code, improve resource allication and general optimization



