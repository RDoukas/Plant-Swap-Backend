/* global axios */
console.log("Sanity Check");

axios.get("https://localhost:3000/api/ads").then(function (response) {
  var ads = response.data;
  console.log(ads);
});
