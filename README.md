# **Projet : EatSmart**

**Etudiant :** Abdelli

---

### **1. Schéma du projet**


![Schéma du MCD](assets/img/schema.png)

---

### **3. Fonctionnalités principales**

#### **3.1 Frontend (eatSmartFront)**

- **Fonctionnalité 1 :**
  La première fonctionnalité du front-office est l'interface de connexion.
  
- **Fonctionnalité 2 :**  
  La  deuxième fonctionnalité du front-office est le suivi du statut de la commande
  (péparation, prêt, servi) en temps réel.
  
#### **3.2 Backend (eatSmartBack)**

- **Fonctionnalité 1 :**  
   La  première fonctionnalité du back-office est la gestion des utilisateurs.
  
- **Fonctionnalité 2 :**  
  La  deuxième fonctionnalité du back-office est la gestion des produits.

---

### **4. Technologies utilisées**

- **Frontend :** HTML, CSS, JS, PHP
- **Backend :** API
- **Base de données :** SQL

---

### **5. Schéma du Modèle Conceptuel de Données (MCD)**

![Schéma du MCD](assets/img/mcd.png)

### **6. Schéma du Modèle Logique de Données (MLD)**

![Schéma du MCD](assets/img/mld.png)

### **7. Schéma du Modèle Physique de Données (MPD)**

![Schéma du MCD](assets/img/mpd.png)

## Endpoints de l'API

Adresse de l'API (en local) : http://localhost/eatsmart-abdelli/index.php?page

Voici les différents endpoints de l'API : 
- `GET /articles` → Afficher la liste des articles
- `GET /articles/{id}` → Afficher l'article avec l'id égal à {id}
- `GET /categories` → Afficher la liste des catégories
- `GET /categories/{id}` → Afficher la catégorie avec l'id égal à {id}
- `GET /commandes` → Afficher la liste des commandes
- `GET /commandes/{id}` → Afficher la commande avec l'id égal à {id}
