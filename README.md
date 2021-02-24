# Peruskirjasto

M.A.D. Peruskirjaston 24-version repositorio. Työskennellään AC23-yhteensopivasti.

Haku omalle koneelle:

```
git clone https://github.com/MADheikki/Peruskirjasto.git
```

Muutosten haku ja koodin muuntaminen .gsm:ksi:

```
git pull
LP_XMLConverter23 x2l Peruskirjasto_xml Peruskirjasto 
```

Commitoidaan xml-muodossa:

```
LP_XMLConverter23 l2x Peruskirjasto Peruskirjasto_xml
git add <hakemisto/tiedosto.xml>
git commit -am "<Lyhyt kuvaus muutoksesta>"
git push
```
