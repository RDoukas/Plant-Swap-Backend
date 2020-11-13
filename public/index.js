/* global axios */
console.log("Sanity Check");

axios.get("https://localhost:3000/api").then(function (response) {
  var ads = response.data;
  console.log(ads);
});
