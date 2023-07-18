unit unitDM;

interface

uses
  System.SysUtils, System.Classes, Data.DBXFirebird, Data.FMTBcd, Data.DB,
  Data.SqlExpr, Datasnap.DBClient, Datasnap.Provider;

type
  TDM = class(TDataModule)
    SQLconexao: TSQLConnection;
    DScontatos: TDataSource;
    Querycontatos: TSQLQuery;
    SPcontatos: TDataSetProvider;
    DSetContatos: TClientDataSet;
    QuerycontatosID_CONTATO: TIntegerField;
    QuerycontatosNOME: TStringField;
    QuerycontatosCELULAR: TStringField;
    QuerycontatosDATA: TDateField;
    QuerycontatosOBSERVACAO: TStringField;
    QuerycontatosBLOQUEADO: TStringField;
    DSetContatosID_CONTATO: TIntegerField;
    DSetContatosNOME: TStringField;
    DSetContatosCELULAR: TStringField;
    DSetContatosDATA: TDateField;
    DSetContatosOBSERVACAO: TStringField;
    DSetContatosBLOQUEADO: TStringField;
    procedure DSetContatosAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.DSetContatosAfterInsert(DataSet: TDataSet);
begin
  DSetContatosDATA.Value := Now ();
end;

end.
