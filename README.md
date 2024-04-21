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

***Nota**: Recomiendo instalar un sistema de refrigerado a la OrangePI ya que la misma suele alcanzar altas temperaturas facilmente.*

## Setup:
Mi homelab fue pensado para ser un sistema multiproposito, con el fin de ser servidor de multimedia, archivos, apps, etc. Todo corriendo sobre **contenedores docker**.

### Instalar Docker:
En este caso instalar Docker lo mejor es seguir la documentacion oficial, en mi caso para Debian.

- [Install Docker on Debian](https://docs.docker.com/engine/install/debian/)

Al igual, escribi una breve guia que simplifica todo lo que debes hacer para poder instalar Docker en Debian.

- [Guia resumida](https://gist.github.com/Sebas1012/83430da8df4ca4fcc74b0bdd2d559d80)



### Servicios usados con Docker:

- [Homer Dashboard](https://github.com/bastienwirtz/homer)
- [Portainer](https://www.portainer.io)
- [Uptime Kuma](https://uptime.kuma.pet)
- [Pi-hole](https://pi-hole.net)
- [Duplicati](https://www.duplicati.com)
- [Homer](https://github.com/bastienwirtz/homer)

### Servicios locales:

- [Cockpit](https://cockpit-project.org) 

### Guias de interes: ❗

- [Configurar IP estatica con nmtui](http://www.orangepi.org/orangepiwiki/index.php/How_to_set_a_static_IP_address)

<p align="center">
  <b>Hecho con &#10084; por: Sebastián. </b>
</p>
