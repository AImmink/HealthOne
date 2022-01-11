<?php
require '../Modules/Categories.php';
require '../Modules/Products.php';
require '../Modules/Database.php';
require '../Modules/Times.php';
require '../Modules/Users.php';
require '../Modules/Reviews.php';

session_start();
var_dump($_SESSION);

$_SESSION['username'] = "Pim";

echo $_SESSION ['username'];

$request = $_SERVER['REQUEST_URI'];
$params = explode("/", $request);
$title = "HealthOne";
$titleSuffix = "";

switch ($params[1]) {
    case 'categories':
        $titleSuffix = ' | Categories';
    
        if (isset($_GET['category_id'])) {
            $categoryId = $_GET['category_id'];
            $products = getProducts($categoryId);
            $name = getCategoryName($categoryId);

            if (isset($_GET['product_id'])) {
                $productId = $_GET['product_id'];
                $product = getProduct($productId);
                $titleSuffix = ' | ' . $product->name;
                if (isset($_POST['name']) && isset($_POST['review'])) {
                    saveReview($_POST['name'], $_POST['stars'], $_POST['review'], $_POST['product_id']);
                }
                // TODO Zorg dat je hier de product pagina laat zien
                include_once "../Templates/sportapparaat_page.php";
            } else {
                // TODO Zorg dat je hier alle producten laat zien van een categorie
                $titleSuffix = ' | Products';
                include_once "../Templates/sportapparaten.php";
            }
        } else {
            // TODO Toon de categorieen
            $categories = getCategories();
            include_once "../Templates/categories.php";
        }
        break;

    case 'contact':
        $titleSuffix = ' | Contact';
        include_once "../Templates/contact.php";
        break;
    case 'machine':
        $titleSuffix = ' | Products';
        include_once "../Templates/sportapparaat_page.php";
        break;
    case 'registreren':
        $titleSuffix = ' | Registreren';
        include_once "../Templates/registreren.php";
        break;
    case 'login':
        $titleSuffix = ' | Login';
        if(isset($_POST['login'])){
            $result = checkLogin();
            switch ($result){
                case 'ADMIN':
                    header("location: /admin/home");
                    break;
                case 'MEMBER':
                case 'FAILURE':
                    $message = "E-mail en/of wachtwoord niet correct ingevuld.";
                    include_once "../Templates/login.php";
                    break;
                case 'INCOMPLETE':
                    $message = "Check of u alle velden heeft ingevuld";
                    include_once "../Templates/login.php";
                    break;
            }
        }
        else {
            include_once "../Templates/login.php";
        }
        break;
        case 'admin';
            include_once ('admin.php');
            break;  
    default:
        $titleSuffix = ' | Home';
        include_once "../Templates/home.php";
}

function getTitle() {
    global $title, $titleSuffix;
    return $title . $titleSuffix;
}
