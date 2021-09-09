# Models and Routing

### Generators
* migration - generates migration file
* model - generates a model and migration file
* controller - genrates a controller
* resource - generates a migration, model, and controller, also gives routing.
* scaffold - generates a migration, model, controller, also gives routing and full restful logic. (NO USE!)


### Routes
* request("/path", to: "controller#action") - request (GET/POST/PATCH/DELETE) custom route
* rescoures models - all restful routes for that model

### Restful routes
* get index - list
* get show - more details
* post create - create resource
* patch update - update resource
* delete destroy - destroy resource