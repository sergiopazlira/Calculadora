unit Fcalculadora;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TF_calculadora }

  TF_calculadora = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Operadores: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  F_calculadora: TF_calculadora;

implementation

{$R *.lfm}

{ TF_calculadora }

procedure TF_calculadora.FormShow(Sender: TObject);
begin
  EDIT1.Clear;
  EDIT2.Clear;
  EDIT3.Clear;
  EDIT1.SetFocus;
  Operadores.ItemIndex:=0;
end;

procedure TF_calculadora.Button1Click(Sender: TObject);
var
valor1:Double;
valor2:Double;
valor3:Double;
begin
valor1:=StrTofloat(Edit1.text);
valor2:=StrTofloat(Edit2.text);
valor3:=0;
   Case Operadores.ItemIndex of
   0:valor3:=valor1+valor2;
   1:valor3:=valor1-valor2;
   2:valor3:=valor1*valor2;
   3:valor3:=valor1/valor2;
   end;
   edit3.text:=FloatTostr(valor3);
end;

end.

