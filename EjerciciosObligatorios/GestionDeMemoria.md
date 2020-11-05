# Ejercicios Gestion de memoria

## Ejercicio 4

### c)

Tamaño de frame: 4KB = 2<sup>10</sup> * 2<sup>2</sup> = 2<sup>12</sup>

Direcciones virtuales / tamaño de frame <br>
2<sup>32</sup> / 2<sup>12</sup> = 2<sup>20</sup> = 1048576

### d)

Direcciones fisicas / tamaño de frame
2<sup>30</sup> / 2<sup>12</sup> = 2<sup>18</sup> = 262144

## Ejercicio 6

CS -> base address: 1000 , limit: 800 <br>
DS -> base address: 500 , limit: 250 <br>
SS -> base address: 4000 , limit: 200 <br>


- A. La dirección 0 para el segmento de datos. 

La direccion fisica es: 500

- B. La dirección 550 para el segmento de código.

La direccion fisica es: 1550

- C. La dirección 100 para el segmento de stack.

La direccion fisica es 4100

- D. La dirección 4000 para el segmento de stack.

La direccion fisica no es valida. Se lanza un Trap


## Ejercicio 7
### a)
1. **Pagina 1:**
Está en la TLB, por ende se usa 1 rafaga

2. **Pagina 2:**
Está en la TLB, por ende se usa 1 rafaga

3. **Pagina 6:**
Está en la Tabla de Paginas, por ende se usan 1+2 rafagas.
Sale la pagina 2 y entra la pagina 6 a la TLB

4. **Pagina 3:**
Hay que ir a buscarla al Backing Store, por ende son 1+2+10 rafagas.
La pagina 2 va al Backing Store y entra la pagina 3 a la Tabla de Paginas.
Pagina 3 entra a la TLB

5. **Pagina 2:**
Hay que ir a buscarla al Backing Store, por ende son 1+2+10 rafagas
La pagina 1 va al Backing Store y la pagina 2 entra a la Tabla de Paginas.
Pagina 2 entra a la TLB

6. **Pagina 1:**
Hay que ir a buscarla al Backing Store, por ende son 1+2+10 rafagas
La pagina 5 va al Backing Store y la pagina 1 entra a la Tabla de Paginas.
Pagina 5 entra a la TLB

7. **Pagina 4:**
Hay que ir a buscarla al Backing Store, por ende son 1+2+10 rafagas
La pagina 6 va al Backing Store y la pagina 4 entra a la Tabla de Paginas.
Pagina 4 entra a la TLB

8. **Pagina 5:**
Hay que ir a buscarla al Backing Store, por ende son 1+2+10 rafagas.
La pagina 3 va al Backing Store y la pagina 5 entra a la Tabla de Paginas.
Pagina 5 entra a la TLB

<br> <br>

**TLB**

| Página      | Frame       | Tiempo |
| ----------- | ----------- | ------ |
| 4           | 3           |6       |
| 5           | 4           |7       |

<br> <br>

**Tabla de Paginas**

| Página      | Frame       | Valid  | Tiempo |
| ----------- | ----------- | ------ | -----   |
| 1           | 1           |   V    |     6   |
| 2           | 2           |   V    |     5   |
| 3           |             |   I    |         |
| 4           | 3           |   V    |     7   |
| 5           | 4           |   V    |     8   |
| 6           |             |   I    |         |

<br>

**Total de rafagas necesarias:** 70

<br>

### b)

1. **Pagina 6:**
Está en la Tabla de Paginas, por ende son 1+2 rafagas.
Sale la pagina 2 y entra la pagina 6 a la TLB.

2. **Pagina 1:**
Está en la TLB, por ende se usa 1 rafaga

3. **Pagina 3:**
Hay que ir a buscarla al Backing Store, por ende son 1+2+10 rafagas.
La pagina 2 va al Backing Store y entra la pagina 3 a la Tabla de Paginas.
Pagina 3 entra a la TLB

4. **Pagina 2:**
Hay que ir a buscarla al Backing Store, por ende son 1+2+10 rafagas.
La pagina 1 va al Backing Store y entra la pagina 2 a la Tabla de Paginas.
Pagina 2 entra a la TLB

5. **Pagina 4:**
Hay que ir a buscarla al Backing Store, por ende son 1+2+10 rafagas
La pagina 5 va al Backing Store y la pagina 4 entra a la Tabla de Paginas.
Pagina 4 entra a la TLB

6. **Pagina 5:**
Hay que ir a buscarla al Backing Store, por ende son 1+2+10 rafagas
La pagina 6 va al Backing Store y la pagina 5 entra a la Tabla de Paginas.
Pagina 5 entra a la TLB

7. **Pagina 4:**
Está en la TLB por ende es 1 rafaga.

8. **Pagina 6:**
Hay que ir a buscarla al Backing Store, por ende son 1+2+10 rafagas.
La pagina 3 va al Backing Store y la pagina 6 entra a la Tabla de Paginas.
Pagina 6 entra a la TLB


<br> <br>

**TLB**

| Página      | Frame       | Tiempo |
| ----------- | ----------- | ------ |
| 5           | 3           |6       |
| 6           | 4           |7       |

<br> <br>

**Tabla de Paginas**

| Página      | Frame       | Valid  | Tiempo |
| ----------- | ----------- | ------ | -----   |
| 1           |             |   I    |         |
| 2           | 2           |   V    |     5   |
| 3           |             |   I    |         |
| 4           | 1           |   V    |     6   |
| 5           | 3           |   V    |     7   |
| 6           | 4           |   V    |     8   |

<br>

**Total de rafagas necesarias:** 70

