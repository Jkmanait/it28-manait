<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"> <!-- Font Awesome CSS -->
    <style>
        /* Define a class for the grid */
        .card-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr)); /* Responsive grid with minimum item width of 250px */
            gap: 20px; /* Gap between grid items */
            padding: 20px; /* Add padding around the grid container */
            width: 80%; /* Set width to 80% */
        }


        /* Style for individual cards */
        .card {
            width: 100%; /* Ensure cards take full width of their container */
        }

        .card-img-top{
            width: 100%; /* Ensure the image fills its container */
            height: auto; /* Maintain aspect ratio */
            object-fit: cover; /* Ensure the image covers the entire container */
        }
        /* Style for the cart */
        #cartContainer {
            position: fixed;
            top: 4em;
            right: 20px;
            background-color: #fff;
            border: 1px solid #ddd;
            padding: 10px;
            box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
            z-index: 999;
        }
    </style>
</head>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">
        <img src="data:image/jpeg;base64,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" width="30" height="30" class="d-inline-block align-top" alt="">
        Store
    </a>
  
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Link</a>
        </li>
      </ul>
      <form class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form>
    </div>
</nav>
<body>

    <div id="productsDisplay" class="card-grid"></div>
    <!-- Cart Display Area -->
    <div id="cartContainer"></div>

    <script>
        fetch('./products/products-api.php')
            .then(response => response.json())
            .then(data => {
                const booksContainer = document.getElementById('productsDisplay');
                data.forEach(product => {
                    const cardHTML = `
                    

                    <div class="card" style="width: 18rem;">
                        <img class="card-img-top" src="${product.img}">
                            <div class="card-body">
                                <h5 class="card-title">${product.title}</h5><br>Price: ₱${product.rrp}<br>
                                <p class="card-text">${product.description}.</p>
                                <p class="card-text"<br>Quantity: ${product.quantity}</p>
                                 <button class="btn btn-success" onclick="addToCart(${product.id})">
                                    <i class="fas fa-cart-plus"></i> <!-- Add to Cart icon -->
                                Add to Cart
                            </button>
                            </div>
                    </div>

                    `;
                    booksContainer.innerHTML += cardHTML;
                });
            })
            .catch(error => console.error('Error:', error));

        // Function to add a product to the cart
        function addToCart(productId) {
            // Here, you can implement your logic to add the product with the given ID to the cart
            console.log(`Product with ID ${productId} added to cart`);
            // For example, you can send an AJAX request to your server to update the cart
        }

        // Function to display the cart with the items added and deduct the values from the quantity data field
        function displayCart() {
            // Here, you can implement the logic to display the cart with the items added and update the quantity data field
        }

        // Initialize cart object
    let cart = {};

    // Function to add a product to the cart
    function addToCart(productId) {
        // Add the product to the cart
        if (cart[productId]) {
            cart[productId]++;
        } else {
            cart[productId] = 1;
        }
        // Display the updated cart
        displayCart();
    }

    // Function to display the cart with the items added and deduct the values from the quantity data field
    function displayCart() {
        const cartContainer = document.getElementById('cartContainer');
            let cartHTML = '<h3>Cart</h3>';
            // Iterate over the cart items and display them
            for (const [productId, quantity] of Object.entries(cart)) {
                cartHTML += `<p>Product ID: ${productId}, Quantity: ${quantity}</p>`;
                // Here, you can update the quantity data field for the corresponding product
            }
            // Update the cart display
            cartContainer.innerHTML = cartHTML;
    }

    </script>
</body>
</html>