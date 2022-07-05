Feature: Carga de documentos.

Scenario Outline: El cliente realiza la carga de documentos dentro del peso permitido.
Given que el cliente quiere realizar la carga de sus documentos dentro del peso permitido.
When le da clic al botón “Document Upload” de la esquina inferior izquierda de su pantalla.
Then le saldrá un rectángulo vertical en donde le dará la opción de subir su documento.
And lo sube.
And le saldrá un mensaje de envío exitoso.
Example:
|Usuario | Método  | Simulación |
|Vania | carga documentos | "Al usuario le aparece un mensaje de envío exitoso."|

Scenario Outline: El cliente realiza la carga de documentos fuera del peso permitido.
Given que el cliente quiere realizar la carga de sus documentos fuera del peso permitido.
When le da clic al botón “Document Upload” de la esquina inferior izquierda de su pantalla.
Then le saldrá un rectángulo vertical en donde le dará la opción de subir su documento
And lo sube
And le saldrá un mensaje que dice “Excede el peso permitido, tendrá que subirlo en .zip”.

Example:
|Usuario | Método      | Simulación |
|Maria Fe | Carga Documentos | "El usuario le sale un mensaje que dice que excede el peso y tiene que subirlo como .zip"|