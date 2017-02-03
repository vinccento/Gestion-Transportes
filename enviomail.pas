unit enviomail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)

    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation  {$R *.dfm}

uses
  IdSMTP, IdMessage,IdAttachmentFile;





procedure EnviarMensaje( sUsuario, sClave, sHost, sAdjunto, sAsunto, sDestino, sMensaje: String );
var SMTP: TIdSMTP;
   Mensaje: TIdMessage;
   Adjunto: TIdAttachmentfile;
begin
  // Creamos el componente de conexión con el servidor
  SMTP := TIdSMTP.Create( nil );
  SMTP.Username := sUsuario;
  SMTP.Password := sClave;
  SMTP.Host := sHost;
  SMTP.Port := 25;
SMTP.AuthType := satDefault;

  // Creamos el contenido del mensaje
  Mensaje := TIdMessage.Create( nil );
  Mensaje.Clear;
  Mensaje.From.Name := sDestino;
  Mensaje.From.Address := sDestino;
  Mensaje.Subject := sAsunto;
  Mensaje.Body.Text := sMensaje;
  Mensaje.Recipients.Add;
  Mensaje.Recipients.Items[0].Address := sDestino;

  // Si hay que meter un archivo adjunto lo creamos y lo asignamos al mensaje
  if sAdjunto <> '' then
  begin
    if FileExists( sAdjunto ) then
      Adjunto := TIdAttachmentfile.Create( Mensaje.MessageParts, sAdjunto );
  end
  else
    Adjunto := nil;

  // Conectamos con el servidor SMTP
  try
    SMTP.Connect;
  except
    raise Exception.Create( 'Error al conectar con el servidor.' );
  end;

  // Si ha conectado enviamos el mensaje y desconectamos
  if SMTP.Connected then
  begin
    try
      SMTP.Send( Mensaje );
    except
      raise Exception.Create( 'Error al enviar el mensaje.' );
    end;

    try
      SMTP.Disconnect;
    except
      raise Exception.Create( 'Error al desconectar del servidor.' );
    end;
  end;

  // Liberamos los objetos creados
  if Adjunto <> nil then
    FreeAndNil( Adjunto );

  FreeAndNil( Mensaje );
  FreeAndNil( SMTP );

  Application.MessageBox( 'Mensaje enviado correctamente.',
    'Fin de proceso',MB_ICONINFORMATION );
end;
procedure TForm2.Button1Click(Sender: TObject);
begin
EnviarMensaje( 'juanito33', 'djeuE21', 'smtp.terra.es',
             'c:\documento.zip', 'Te envio mi documento',
             'felipe8843@terra.es', 'Adjunto archivo: documento.zip' );
end;

end.
