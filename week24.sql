query restaurant{
  restaurant(id:3) {
    name
    description
    dishes {
      name
      price

    }
  }
}

query restaurants {
  restaurants {
    id
    name
    description
    dishes {
      name
      price
    }
  }
}

mutation setrestaurants {
  setrestaurant(input: {
    name: "Granite",
    description: "American",
  }) {
    name
    description
  }
}

mutation deleterestaurants($iid: Int = 1) {
  deleterestaurant(id: $iid) {
    ok
  }
}

mutation editrestaurants($idd: Int = 1, $name: String = "OLDO") {
  editrestaurant(id: $idd, name: $name) {
    name
    description
  }
}