# 🏙️ Smart City Casablanca : Microgrid Intelligent & Blockchain

# Technologies Utilisées
| Technologie            | Importance dans le projet                                      |
|------------------------|---------------------------------------------------------------|
| Python (Pandas/NumPy)  | Nettoyage des données et simulation des flux énergétiques      |
| Scikit-Learn           | Entraînement du modèle de Régression Polynomiale (92.8% de précision) |
| Solidity & Ganache     | Création du registre immuable pour la transparence des transactions |
| Streamlit / HTML       | Visualisation interactive des données et du statut du réseau   |
| Joblib                 | Sérialisation du modèle pour un déploiement rapide             |


# Plan du Projet
 1. Introduction
 2. Simulation du Quartier : Configuration d'un micro-réseau (2 foyers producteurs, 2 foyers consommateurs).
 3. Exploration & Prétraitement : Analyse des données Kaggle et injection de variables solaires réalistes.
 4. Intelligence Prédictive : Comparaison de modèles ML pour anticiper la consommation à T+1.
 5. Sécurisation Blockchain : Développement de Smart Contracts pour automatiser et certifier les transferts.
 6. Interface Interactive : Dashboard de monitoring en temps réel.
 7. Conclusion

# 1. Introduction
Ce projet propose une solution innovante de gestion énergétique pour un quartier intelligent à Casablanca. Face à l'impossibilité de déployer des capteurs physiques, nous avons conçu un Jumeau Numérique (Digital Twin) haute fidélité. Le système utilise le Machine Learning pour anticiper les besoins énergétiques et la Blockchain pour sécuriser les échanges d'énergie Peer-to-Peer entre foyers producteurs et consommateurs.

# 2. Dataset & Source des données
- Source : IoT-SmartHome Energy Dataset (Kaggle).
- Adaptation : Nous avons transformé ce dataset brut pour simuler un quartier hétérogène, incluant des profils de production photovoltaïque basés sur l'irradiance solaire de Casablanca.

| Catégorie                          | Variable                  | Description                                                                 |
|------------------------------------|---------------------------|-----------------------------------------------------------------------------|
| **Variables Structurelles**         | timestamp                 | Horodatage précis de la mesure (fréquence à la minute). Permet l'analyse des cycles journaliers. |
|                                    | household_id              | Identifiant unique du foyer (1 à 5).                                        |
|                                    | Foyers 1 & 2              | Profils "Énergivores" (Consommateurs nets).                                 |
|                                    | Foyers 3 & 4              | Profils "Eco-Producteurs" (Générateurs d'énergie solaire).                  |
|                                    | Foyer 5                   | Profil témoin.                                                              |
| **Variables Électriques (Capteurs)**| energy_consumption_kWh    | Consommation électrique brute. Remplace le capteur de courant ACS712.       |
|                                    | production_solaire        | Énergie générée par les panneaux photovoltaïques, calculée selon une courbe d'irradiance gaussienne culminant à 13h00. Remplace le capteur BH1750. |
|                                    | flux_energetique          | Bilan énergétique instantané. Flux > 0 : surplus (Mode Vendeur). Flux < 0 : déficit (Mode Acheteur). |
| **Variables Intelligence & Prédiction** | target_category        | Classification de la consommation actuelle (Low, Medium, High). Sert de variable cible pour les modèles de classification. |
|                                    | future_consumption_kWh    | Consommation prévue à quelques minutes. Cruciale pour l’anticipation des transferts d’énergie par le Smart Contract. |






