# SoundBar

- [x] Include at least one `has_many`, at least one `belongs_to`, and at least two `has_many :through` relationships
- [x] Include a `many-to-many` relationship implemented with `has_many :through` associations. The join table must include a user-submittable attribute — that is to say, some attribute other than its foreign keys that can be submittedby the app's user
- [x] Include reasonable validations for the simple attributes. Don't need to add every possible validation or duplicates, such as presence and a minimum length, but the models should defend against invalid data.
- [x] Include at least one class level ActiveRecord scope method. 
- [x] Scope method must be chainable; ActiveRecord Query methods within it (such as `.where` and `.order`) rather than native ruby methods (such as `#find_all` or `#sort`).
- [x] Application must provide standard user authentication, including signup, login, logout, and passwords.
- [x] Authentication system must also allow login from some other service. Facebook, Twitter, Foursquare, Github, etc...
- [x] Must include and make use of a nested resource with the appropriate RESTful URLs.
- [x] Must include a nested new route with form that relates to the parent resource
- [x] Must include a nested index or show route
- [x] Forms should correctly display validation errors.
- [x] Fields should be enclosed within a `fields_with_errors` class
- [x] Error messages describing the validation failures must be present within the view.
- [x] Application must be, within reason, a DRY (Do-Not-Repeat-Yourself) rails app.
- [x] Logic present in controllers should be encapsulated as methods in models.
- [x] Views should use helper methods and partials when appropriate.
- [x] Follow patterns in the Rails Style Guide and the Ruby Style Guide.
Do not use scaffolding. The goal here is to learn. Learning a lot is not one of the benefits of scaffolding.
```
one model needs to have at least two foreign keys plus other attributes
```

Instrument resell. Users can list items, comment on/review other listed items.
---
1. Based on type of instrument: 
  * String
  * Percussion
  * Keyboard
2. Sub-Divided into brands: 
  * String: C.F. Martin, Taylor, Franz Hoffman, Fender, Ibanez, Other
  * Percussion: Sonor, Gretsch, Pearl, Ludwig, British Drum Company
  * Keyboard: Yamaha, Casio, Roland, Kawai, Korg
---
---
## Sessions
  ### Views
    * signup form
    * login form
  ### Routes
    * get '/login', to: 'sessions#new'
    * post '/login', to: 'sessions#create'
    * get '/logout', to: 'sessions#destroy'
    * get '/signup', to: 'users#new'
    * post 'signup', to: 'users#create

## User
  ### Attributes
    * Name
    * Email
    * Password
  ### Associations
  ```ruby
      * has_many :reviews		  
      * has_many :instruments # created
      * has_many :brands, through: :instruments
      * has_many :categories, through: :instruments
      * has_many :reviewed_instruments, through: :reviews, source: :instrument # reviewed
      * has_one :cart
  ```
  ### Views
    * signup (create)
    * profile with edit functionality (show/edit/delete)
  ### Controller
    *
  ### Routes
    *

## Category
  ### Attributes
    * Name
  ### Associations
  ```ruby
      * has_many :brands
      * has_many :instruments, through: :brands
  ```
  ### Views
    *
  ### Controller
    *
  ### Routes
    *

## Brand
  ### Attributes
    * Name
    * Instrument category
  ### Associations
  ```ruby
      * has_many :instruments
      * has_many :reviews, through: :instruments
      * belongs_to :category
  ```
  ### Views
    * 
  ### Controller
    *
  ### Routes
    *

## Instrument
  ### Attributes
    * Model
    * Instrument Type
    * Description
    * Price
  ### Associations
  ```ruby
      * belongs_to :brand # (brand_id)
      * belongs_to :category # (category_id)
      * belongs_to :user # (user_id) creator
      * has_many :reviews 
      * has_many :users, through: :users # reviewer
      * has_one_and_belongs_to_many :cart
  ```
  ### Views
    * Index - 
    * New
    * Show
  ### Controller
    *
  ### Routes
    *

## Review
  ### Attributes
    * Rating
    * Title
    * Content
  ### Associations
  ```ruby
      * belongs_to :user # (user_id)
      * belongs_to :instrument # (instrument_id)
  ```
  ### Views
    *
  ### Controller
    *
  ### Routes
    *

<!-- ### Check Password Confirmation; make sure they match -->
<!-- ### remove create account link from signup page -->
<!-- ### remove table headers from user profile with no instruments -->
<!-- ### set category in instruments#new with brand.category_id -->
<!-- ### set validation for instruments price to require an integer -->
<!-- ### create uniform inputs for data base creation in instruments#new -->
### create update functions for instruments & users