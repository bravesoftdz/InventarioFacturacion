unit ProgressShow;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TDisplayProgress = class(TForm)
    Label2: TLabel;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DisplayProgress: TDisplayProgress;

implementation

{$R *.dfm}

end.
