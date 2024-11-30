# My Homelab v1 🏡🍊
Este repositorio contiene todas las configuraciones y scripts necesarios para el despliegue de mi homelab actual.

## Descripcion: 
Actualmente mi OrangePI corre el sistema operativo [Debian Bookworm Server 5.10.160](http://www.orangepi.org/html/hardWare/computerAndMicrocontrollers/service-and-support/Orange-Pi-3B.html) el cual es proporcionado en la web oficial del proveedor como una imagen oficial.

| Hardware      | Description     |
| ------------- | -------------   |
| OrangePi      | 3b              |
| CPU           | Rockchip RK3566 |
| Velocity      | 1.8GHz          |
| Cores         | Quad-core       |
| RAM           | 4GB LPDDR4      |
| GPU           | Mali G52 2EE    |

***Nota**: Recomiendo instalar un sistema de refrigerado a la OrangePI ya que la misma suele alcanzar altas temperaturas facilmente. En mi caso uso una carcasa que compre por Amazon, que es la [N510](https://www.amazon.com/-/es/eleUniverse-ventilador-refrigeraci%C3%B3n-disipadores-compatible/dp/B0CJDV7DR8/ref=sr_1_9?__mk_es_US=%C3%85M%C3%85%C5%BD%C3%95%C3%91&crid=1VMLVOQZEDQ6F&dib=eyJ2IjoiMSJ9.6Cmkq787zmIT7_p1h_RySsOyX-i4xBJUWfHE_3WfDtXMZDjtyDLHuTsZc7H5F3UjkJOTGZaJzfEyueWUIWGG7InXShPsvcQCDA66mlxTxQ1RQtgPAxIkSMJSSMI63IqGfeRmmw_g8mmOo0UbHx20FV8rYQTpLQTeSyfRJI1liuoOe3hA6TORMnIZ9QbiNmh2ryDX29Hv0MFvXSMab_uiq6grpuHtM1KdAN0_Rl61yjQ.oKAEDo91p9zJrGvX81_rw58OhWwYabwuT1VwSuyTu-4&dib_tag=se&keywords=orange+pi+3b&qid=1732998555&sprefix=orange+pi+3b%2Caps%2C367&sr=8-9).*

## Setup:
Mi homelab fue pensado para ser un sistema multiproposito, con el fin de ser servidor de multimedia, archivos, apps, etc. Todo corriendo sobre **contenedores docker**. Para eso me apoyo de **CasaOS** que me permite de manera sencilla tener un dashboard y un "AppStore", que funciona mediante docker compose, ejecutar todo tipo de apps y en caso de que no este disponible alguna que necesite poder crearla de manera simple y rapida.

### Instalar Docker:
En este caso instalar Docker lo mejor es seguir la documentacion oficial, en mi caso para Debian.

- [Install Docker on Debian](https://docs.docker.com/engine/install/debian/)

Al igual, escribi una breve guia que simplifica todo lo que debes hacer para poder instalar Docker en Debian.

- [Guia resumida](https://gist.github.com/Sebas1012/83430da8df4ca4fcc74b0bdd2d559d80)


### Instalar CasaOS:
Instalar CasaOs es sencillo y desde la documentacion oficial se puede hacer de manera muy rapida.

- [CasaOs Docs](https://github.com/IceWhaleTech/CasaOS/blob/main/README.md)

 
### Guias de interes: ❗

- [Configurar IP estatica con nmtui](http://www.orangepi.org/orangepiwiki/index.php/How_to_set_a_static_IP_address)

<p align="center">
  <b>Hecho con &#10084; por: Sebastián. </b>
</p>
