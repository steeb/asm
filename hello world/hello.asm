.globl _start             # Der Programmstart muss Global bekannt sein
.data                     # Hier kommen unsere Variablen rein
meintext:                 # Sprungmarken kann man auch als Variablennamen verwenden
    .ascii "Hello World\n"# Das ist unser Datensatz der ausgegeben werden soll
.text                     # Hier faengt der Codeabschnitt an
  _start:                 # Hier ist der Programmstart (wichtig für den Linker(Entrypoint))
    movl $0x04,     %eax  # Syscall Nr. 4 = In Datei Schreiben
    movl $0x01,     %ebx  # Datei Nr. 1 = stdout (Konsolenausgabe)
    movl $meintext, %ecx  # Adresse der Daten die geschrieben werden sollen
    movl $0x0c,     %edx  # Anzahl der Bytes die geschrieben werden sollen
    int  $0x80            # Syscall ausführen
    movl $0x01,     %eax  # Syscall Nr. 1 = Sys_Exit
    xorl %ebx,      %ebx  # Rückgabewert  = 0 (XOR mit sich selbst gibt immer Null)
    int  $0x80            # Syscall ausführen
