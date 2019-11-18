unit HintFormU;
// Hintform, by Julian Ziersch, www.wptools.com

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls;

type
  THintForm = class(TForm)
    aLabel: TLabel;
  protected
   procedure CreateParams(var Params: TCreateParams); override;
   procedure CMTextChanged(var Message: TMessage); message CM_TEXTCHANGED;
  public
   procedure Show;
   procedure Hide;
  end;

implementation

{$R *.DFM}

procedure THintForm.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
  begin
    Style := WS_POPUP or WS_BORDER;
    WindowClass.Style := WindowClass.Style or CS_SAVEBITS;
  end;
end;

procedure THintForm.CMTextChanged(var Message: TMessage);
begin
  inherited;
  if aLabel<>nil then
  begin
    aLabel.Caption := Caption;
    Width := aLabel.Width + aLabel.Left * 2 + 1;
    Height := aLabel.Height + aLabel.Top * 2 + 1;
  end;
end;

procedure THintForm.Show;
begin
  ShowWindow(Self.Handle,SW_SHOWNOACTIVATE);
end;

procedure THintForm.Hide;
begin
  ShowWindow(Self.Handle,SW_HIDE);
end;

end.
