# CarMotors — Sistema de Gestión de Taller (SGT)

Proyecto académico desarrollado en **Java 17**, **Maven**, **JDBC** y **MySQL** para gestionar las operaciones principales de un taller automotriz.

## Integrantes

- Zlatan Ricardo Villamizar Fajardo
- Valeria
- Crisbely
- Marilud

## Objetivo

Desarrollar un sistema de consola que permita administrar clientes, vehículos, órdenes de servicio, técnicos, repuestos, inventario, proveedores, facturación y reportes del taller CarMotors.

## Módulos principales

### Clientes
Registro de clientes, vehículos asociados, historial de servicios y recordatorios de mantenimiento.

### Servicios
Creación y seguimiento de órdenes de servicio, asignación de técnicos y repuestos y control de estados.

### Inventario
Registro de repuestos, existencias, stock mínimo, lotes, proveedores y trazabilidad.

### Facturación y reportes
Generación de facturas y consultas para apoyar el control administrativo del taller.

## Tecnologías

- Java 17
- Maven
- JDBC
- MySQL
- IntelliJ IDEA
- Git y GitHub

## Arquitectura

El proyecto utiliza una estructura basada en MVC y separación por capas:

```text
src/main/java/
├── model/
├── view/
├── controller/
├── service/
└── repository/
```

La lógica de negocio se mantiene en la capa de servicios y el acceso a datos se realiza mediante repositorios/DAO.

## Base de datos

Los scripts SQL del proyecto se almacenarán en:

```text
database/
├── schema.sql
└── data.sql
```

El modelo contempla como entidades principales:

- clientes
- vehiculos
- servicios
- repuestos

Además de sus tablas relacionadas para técnicos, proveedores, lotes, recordatorios, facturas y catálogos.

## Flujo de trabajo Git

Se utilizará una estrategia basada en:

```text
main
└── develop
    └── feature/...
```

Cada integrante desarrolla su tarea en una rama `feature` y posteriormente realiza un Pull Request hacia `develop`.

### Convención de commits

Los commits deben escribirse en inglés siguiendo Conventional Commits.

Ejemplos:

```text
feat(database): add client and maintenance reminder tables
feat(database): add vehicle table and relationships
feat(database): add inventory and supplier tables
feat(database): add service and technician tables
fix(database): correct service foreign keys
docs(readme): update project documentation
```

## Ejecución con Maven

Compilar:

```bash
mvn clean compile
```

Ejecutar las pruebas:

```bash
mvn test
```

## Estado

Proyecto en desarrollo.
