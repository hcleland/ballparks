// USe the Vue.use() global method

var RatingsIndexPage = {
  template: "#ratings-index-page",
  data: function() {
    return {
      message: "Welcome to Vue.js!",
      ratings: [],
      ballparks: [],
      userName: ""
    };
  },
  created: function() {
    console.log('in the created');
    axios.get('/api/ratings').then(function(response) {
      console.log(response.data);
      console.log("in the callback for ratings index");
      this.ratings = response.data.ratings;
      this.userName = response.data.name;
    }.bind(this));
  },
  methods: {},
  computed: {}
};

var RatingsPage = {
  template: "#ratings-page",
  data: function() {
    return {
      stadium: "",
      seats: "",
      concessions: "",
      amenities: "",
      location: "",
      notes: "",
      ballparks: []
      // errors: []
    };
  },
  created: function() {
    console.log('in the created');
    axios.get('/api/ballparks').then(function(response) {
      console.log(response.data);
      console.log("in the callback for index");
      this.ballparks = response.data.ballparks;
    }.bind(this));
  },
  methods: {
    submit: function() {
      console.log('in the submit function for new ratings')
      var params = {
        ballpark_id: this.$route.query.ballpark_id,
        stadium: this.stadium,
        seats: this.seats,
        concessions: this.concessions,
        amenities: this.amenities,
        location: this.location,
        notes: this.notes
      };
      console.log(params);
      axios
        .post("/api/ratings", params)
        .then(function(response) {
          console.log(response);
          router.push("/");
        })
    }
  } 
};

var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      message: "Welcome to Vue.js!",
      ballparks: []
    };
  },
  created: function() {
    console.log('in the created');
    axios.get('/api/ballparks').then(function(response) {
      console.log(response.data);
      console.log("in the callback for places index");
      this.ballparks = response.data.ballparks;
    }.bind(this));
  },
  methods: {
    submit: function(ballpark) {
      this.ballpark = ballpark;
    },
  },
  computed: {}
};

var SignupPage = {
  template: "#signup-page",
  data: function() {
    return {
      name: "",
      email: "",
      password: "",
      passwordConfirmation: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        name: this.name,
        email: this.email,
        password: this.password,
        password_confirmation: this.passwordConfirmation
      };
      axios
        .post("/api/users", params)
        .then(function(response) {
          router.push("/login");
        })
        .catch(
          function(error) {
            this.errors = error.response.data.errors;
          }.bind(this)
        );
    }
  }
};

var LoginPage = {
  template: "#login-page",
  data: function() {
    return {
      email: "",
      password: "",
      errors: []
    };
  },
  methods: {
    submit: function() {
      var params = {
        email: this.email, password: this.password
      };
      axios
        .post("/api/sessions", params)
        .then(function(response) {
          axios.defaults.headers.common["Authorization"] =
            "Bearer " + response.data.jwt;
          localStorage.setItem("jwt", response.data.jwt);
          router.push("/");
        })
        .catch(
          function(error) {
            this.errors = ["Invalid email or password."];
            this.email = "";
            this.password = "";
          }.bind(this)
        );
    }
  }
};

var LogoutPage = {
  template: "<h1>Logout</h1>",
  created: function() {
    axios.defaults.headers.common["Authorization"] = undefined;
    localStorage.removeItem("jwt");
    router.push("/");
  }
};


var router = new VueRouter({
  routes: [
    { path: "/", component: HomePage },
    { path: "/ratings/new", component: RatingsPage },
    { path: "/signup/", component: SignupPage },
    { path: "/login/", component: LoginPage },
    { path: "/logout/", component: LogoutPage },
    { path: "/ratings", component: RatingsIndexPage }
  ],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router,
  created: function() {
    var jwt = localStorage.getItem("jwt");
    if (jwt) {
      axios.defaults.headers.common["Authorization"] = jwt;
    }
  }
});



