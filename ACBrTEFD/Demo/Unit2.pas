unit Unit2;

{$IFDEF FPC}
 {$mode objfpc}{$H+}
{$ENDIF}

interface

uses
  Classes, SysUtils,
  {$IFDEF FPC}
    LResources, FileUtil, EditBtn, MaskEdit,
  {$ELSE}
    Mask,
  {$ENDIF}
  Forms, Controls, Graphics, Dialogs, StdCtrls, Spin,
  ComCtrls  ;

type

  { TForm2 }

  TForm2 = class(TForm)
     Button1 : TButton;
     cbxRede : TComboBox;
     edNSU : TEdit;
     edValor : TEdit;
     Label1 : TLabel;
     Label2 : TLabel;
     Label3 : TLabel;
     Label4 : TLabel;
     meHora : TMaskEdit;
     {$IFDEF FPC}
       deData: TDateEdit;
     {$ELSE}
       deData: TDateTimePicker;
     {$ENDIF}
    Label5: TLabel;
     procedure FormCreate(Sender : TObject);
  private
    { private declarations }
  public
    { public declarations }
  end; 

var
  Form2 : TForm2; 

implementation

{$IFNDEF FPC}
 {$R *.dfm}
{$ENDIF}

{ TForm2 }

procedure TForm2.FormCreate(Sender : TObject);
begin
   deData.Date := now ;
end;

initialization
{$IFDEF FPC}
 {$I unit2.lrs}
{$ENDIF}

end.

