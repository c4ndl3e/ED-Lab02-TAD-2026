{ tad_ej2_pagar.pas - Programa Principal }
program tad_ej2_pagar;

uses
   uPagoTarjeta, uPagoTransferencia, uPagoBizum;

var
  cantidad: real;
  pagoValido: boolean;
  opcion: integer;
  data : string;

begin
    
    // Leer monto
    write('Introduce la cantidad a pagar: ');
    readln(cantidad);
    
    // Seleccionar método de pago
    writeln('Selecciona el metodo de pago:');

    writeln('1. Tarjeta de credito');
    writeln('2. Transferencia bancaria');
    writeln('3. Bizum');
    write('Opcion: ');
    readln(opcion);

    // Realizar pago
    case opcion of
        1: 
        begin
          uPagoTarjeta.IniciarPago;
          readln(data);
          uPagoTarjeta.RealizarPago(data, cantidad);
          pagoValido := uPagoTarjeta.ValidarPago(data);
        end;
        2:
        begin
          uPagoTransferencia.IniciarPago;
          readln(data);
          uPagoTransferencia.RealizarPago(data, cantidad);
          pagoValido := uPagoTransferencia.ValidarPago(data);
        end;
        3:
        begin
          uPagoBizum.IniciarPago;
          readln(data);
          uPagoBizum.RealizarPago(data, cantidad);
          pagoValido := uPagoBizum.ValidarPago(data);
        end;

        else
        begin
          writeln('Opcion no valida');
        end;


    end;

        if pagoValido then
        begin
          writeln('Pago realizado correctamente');
        end
        else
        begin
          writeln('Pago no valido');
        end;

  readln;
end.
