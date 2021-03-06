unit uCalculadora;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCalculadora = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lbResultado2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    btnMultiplicar: TButton;
    btnDividir: TButton;
    btnSubtrair: TButton;
    btnSoma: TButton;
    btnLimpar: TButton;
    btnSair: TButton;
    procedure btnSomaClick(Sender: TObject);
    procedure btnSubtrairClick(Sender: TObject);
    procedure btnDividirClick(Sender: TObject);
    procedure btnMultiplicarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCalculadora: TfrmCalculadora;
  val1, val2, result: real;

implementation

{$R *.dfm}

procedure TfrmCalculadora.btnDividirClick(Sender: TObject);
begin
  val1 := StrtoFloat(Edit1.Text);
  val2 := StrtoFloat(Edit2.Text);
  result := val1 / val2;
  Edit3.Enabled := True;
  Edit3.Text := FloattoStr(result);
  lbResultado2.Caption := FloattoStr(result);
end;

procedure TfrmCalculadora.btnLimparClick(Sender: TObject);
begin
Edit1.clear;
Edit2.clear;
Edit3.clear;
lbResultado2.caption := '';
Edit3.Enabled := False;
end;

procedure TfrmCalculadora.btnMultiplicarClick(Sender: TObject);
begin
  val1 := StrtoFloat(Edit1.Text);
  val2 := StrtoFloat(Edit2.Text);
  result := val1 * val2;
  Edit3.Enabled := True;
  Edit3.Text := FloattoStr(result);
  lbResultado2.Caption := FloattoStr(result);
end;

procedure TfrmCalculadora.btnSairClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TfrmCalculadora.btnSomaClick(Sender: TObject);
begin
  val1 := StrtoFloat(Edit1.Text);
  val2 := StrtoFloat(Edit2.Text);
  result := val1 + val2;
  Edit3.Enabled := True;
  Edit3.Text := FloattoStr(result);
  lbResultado2.Caption := FloattoStr(result);
end;

procedure TfrmCalculadora.btnSubtrairClick(Sender: TObject);
begin
  val1 := StrtoFloat(Edit1.Text);
  val2 := StrtoFloat(Edit2.Text);
  result := val1 - val2;
  Edit3.Enabled := True;
  Edit3.Text := FloattoStr(result);
  lbResultado2.Caption := FloattoStr(result);
end;



end.
