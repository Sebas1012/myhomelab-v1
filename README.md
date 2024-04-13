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
En este caso instalar docker es muy simple y existen 2 maneras de hacerlo:

- Utilizado la herramienta `orangepi-config` la cual permite instalarlo mediante una interface grafica.
- Utilizando el comando `sudo apt install docker.io`.

Personalmente  prefiero hacerlo mediante `apt` ya que resulta mas comodo para mi.

### Servicios usados:

- [Portainer](https://www.portainer.io)
- [Uptime Kuma](https://uptime.kuma.pet)
- [Pi-hole](https://pi-hole.net)
- [Duplicati](https://www.duplicati.com)
- [Budget Zero](https://github.com/budgetzero/budgetzero)

<p align="center">
  <b>Hecho con &#10084; por: Sebastián. </b>
</p>