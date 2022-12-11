unit TechUtilitys;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls;
type
  TBoundLines = set of (blLeft, blTop, blRight, blBottom);


  TParentControl = class(TWinControl);
  TParentViewPortRec= record
                        X        : integer;
                        Y        : integer;
                        PrControl: TParentControl;
                        Control  : TControl;
                      end;
   PParentViewPort  = ^TParentViewPortRec;

//--- Functions ----------------------------------------------------------------

// OutlineColor  : Edge color of original bitmap. For use: clwblack.
// BackColor     : Background of disabled bitmap to be drawn.
//                 For use : color of the control that disabled bitmap to be drawn.
// HighlightColor: Highlight color of disabled bitmap. For use: clwhite.
// ShadowColor   : Shadow color of disabled color. For use: clgray.
function CreateDisabledBitmap(FOriginal: TBitmap;
                              OutlineColor,
                              BackColor,
                              HighlightColor,
                              ShadowColor  : TColor;
                              DrawHighlight: Boolean): TBitmap;

function DrawDisabledText    (Canvas : tCanvas; Str: PChar; Count: Integer;
                              var Rect: TRect;  Format: Word): Integer;
                              function GetFontMetrics      (Font: TFont): TTextMetric;
function GetFontHeight       (Font: TFont): Integer;

function CommaToString       (const Value: string): string;

function StringToComma       (const Value: string): string;

function SafeStrToInt        (S : string) : integer;

function ColorLighter        (const Color: TColor; const Percent: Byte):TColor;

function ColorDarker         (const OriginalColor: TColor; const Percent: Byte): TColor;

function ColorLighterRGB     (const Color: TColorRef; const Percent: Byte): TColorRef;

function ColorDarkerRGB      (const Color: TColorRef; const Percent: Byte): TColorRef;

function NumberPart          (NumText: string): string;

function DecimalPart         (NumText: string; DecimalLen: integer): string;

function RemoveThousands     (NumText: string): string;

function DecimalPos          (NumText: string): integer;

function Zeros               (Count  : integer): string;

//--- Procedures ---------------------------------------------------------------
procedure DrawTransparentBitmap(Ahdc: HDC; Image: TBitmap; X, Y: Word; TrCol: Tcolor);

procedure DrawLine             (const ACanvas: TCanvas; const x1, y1, x2, y2: Integer);

procedure DrawBoundLines       (const ACanvas: TCanvas; const ABoundLines: TBoundLines;
                                const AColor: TColor; const R: TRect);

procedure RenderText           (const Parent: TControl; const Canvas: TCanvas;
                                AText: string; const AFont: TFont;
                                const Enabled, ShowAccelChar: Boolean;
                                var Rect: TRect; Flags: Integer);

procedure PlaceText            (const Parent: TControl; const Canvas: TCanvas; const AText: string;
                                const AFont: TFont; const Enabled, ShowAccelChar: Boolean;
                                const Alignment: TAlignment; const WordWrap: Boolean; var Rect: TRect);

procedure WriteText            (ACanvas: TCanvas; ARect: TRect; DX, DY: Integer;
                                const Text: string; Alignment: TAlignment);

procedure SetDrawFlags         (const Alignment: TAlignment; const WordWrap: Boolean; var Flags: Integer);


procedure CopyParentImage(Control: TControl; Dest: TCanvas);



implementation
uses TechGradPanel;

procedure CopyParentImage(Control: TControl; Dest: TCanvas);
var
  I, I1, Count,
  X, Y, SaveIndex: Integer;
  DC             : HDC;
  R, SelfR, CtlR : TRect;
  OK             : boolean;
  TmpControl     : TParentcontrol;
  LParentViewPort: TList;
  ParentViewPort : PParentViewPort;
begin
  if (Control = nil) or (Control.Parent = nil) then Exit;
  DC := Dest.Handle;
{$IFDEF WIN32}
  with Control.Parent do ControlState := ControlState + [csPaintCopy];
  try
{$ENDIF}
    with Control do begin
      SelfR := Bounds(Left, Top, Width, Height);
      X := -Left; Y := -Top;
    end;
    OK:= false;
    TmpControl:= TParentControl(control.parent);

    while not ok do begin
      if (TmpControl.Classname<>'TTechGradPanel') or (TmpControl.Parent.ClassName<>'TTechGradPanel') then
        OK:= true
      else if (TmpControl.classname='TTechGradPanel')  then begin
        if not TTechGradPanel(TmpControl).Transparent then begin
          OK:= true;
        end else   begin
          X         := X-TmpControl.Left;
          Y         := Y-TmpControl.top;
          TmpControl:= TParentControl(TmpControl.parent);
        end;
      end;
    end;

    SaveIndex := SaveDC(DC);
    try
      SetViewportOrgEx(DC, x, y, nil);
      intersectClipRect(DC, 0, 0, TmpControl.ClientWidth, TmpControl.ClientHeight);
      with TmpControl do begin
        Perform(WM_ERASEBKGND, DC, 0);
        PaintWindow(DC);
      end;
    finally
      RestoreDC(DC, SaveIndex);
    end;

    with Control do begin
      X := -Left; Y := -Top;
    end;
    OK:= false;
    New(ParentViewPort);
    ParentViewPort^.x        := X;
    ParentViewPort^.y        := Y;
    ParentViewPort^.PrControl:= TParentControl(control.parent);
    ParentViewPort^.Control  := Control;
    LParentViewPort          :=TList.Create;
    LParentViewPort.Add(ParentViewPort);
    TmpControl:=TParentControl(control.parent);;

    while not ok do begin
     if (TmpControl.classname<>'TTechGradPanel')  then begin
       OK:= true ;
     end else if (TmpControl.classname='TTechGradPanel')  then begin
       if not TTechGradPanel(TmpControl).Transparent then begin
         OK:= true;
       end else begin
         New(ParentViewPort);
         X                        := X-TmpControl.Left;
         ParentViewPort^.x        := X;
         Y                        := y-TmpControl.Top;
         ParentViewPort^.y        := Y;
         ParentViewPort^.Control  := TmpControl;
         TmpControl               := TParentControl(TmpControl.parent);
         ParentViewPort^.PrControl:= TmpControl;
         LParentViewPort.Add(ParentViewPort);
       end
     end;
    end;

    for I1:= LParentViewPort.Count-1 downto 0 do begin
      OK:= false;
      ParentViewPort:=LParentViewPort.Items[I1];
      TmpControl:=ParentViewPort^.PrControl;
      X:= ParentViewPort^.x;
      Y:= ParentViewPort^.y;

      Count := TmpControl.ControlCount;
      with TParentControl(PParentViewPort(LParentViewPort.Items[I1]).Control) do begin
        SelfR := Bounds(Left, Top, Width, Height);
      end;
      for I := 0 to Count - 1 do begin
        if TmpControl.Controls[I] = PParentViewPort(LParentViewPort.Items[I1]).Control then
          Break
        else if (TmpControl.Controls[I] <> nil) and (TmpControl.Controls[I] is TGraphicControl) then begin
          with TGraphicControl(TmpControl.Controls[I]) do begin
            CtlR := Bounds(Left, Top, Width, Height);
            if Bool(IntersectRect(R, SelfR, CtlR)) and Visible then begin
{$IFDEF WIN32}
            ControlState := ControlState + [csPaintCopy];
{$ENDIF}
            SaveIndex := SaveDC(DC);
            try
              SetViewportOrgEx(DC,x+left, y+Top, nil);
              IntersectClipRect(DC, 0, 0, Width, Height);
              Perform(WM_PAINT, DC, 0);
            finally
              RestoreDC(DC, SaveIndex);
{$IFDEF WIN32}
              ControlState := ControlState - [csPaintCopy];
{$ENDIF}
            end;
          end;
        end;
      end;
    end; { for }
  end; { try }
{$IFDEF WIN32}
  finally
    with control.parent do ControlState := ControlState - [csPaintCopy];
  end;
{$ENDIF}
end;


//------------------------------------------------------------------------------
procedure WriteText(ACanvas: TCanvas; ARect: TRect; DX, DY: Integer;
                    const Text: string; Alignment: TAlignment);
var
  I, Left: Integer;
begin
  I:= ColorToRGB(ACanvas.Brush.Color);
  if GetNearestColor(ACanvas.Handle, I) = I then begin
    case Alignment of
      taLeftJustify : Left:= ARect.Left+DX;
      taRightJustify: Left:= ARect.Right - ACanvas.TextWidth(Text)-3;
      taCenter      : Left:= Arect.Left+(ARect.Right-ARect.Left) shr 1
                                       -(ACanvas.TextWidth(Text) shr 1)
    end;
    ExtTextOut(ACanvas.Handle, Left, ARect.Top+DY, ETO_CLIPPED+ETO_OPAQUE ,
               @ARect, PChar(Text), Length(Text), nil);
  end;
end;
//------------------------------------------------------------------------------
function CreateDisabledBitmap(FOriginal: TBitmap; OutlineColor, BackColor, HighlightColor, ShadowColor: TColor; DrawHighlight: Boolean): TBitmap;
const
  ROP_DSPDxax = $00E20746;
var
  MonoBmp: TBitmap;
  IRect: TRect;
begin
  IRect := Rect(0, 0, FOriginal.Width, FOriginal.Height);
  Result := TBitmap.Create;
  try
    Result.Width := FOriginal.Width;
    Result.Height := FOriginal.Height;
    MonoBmp := TBitmap.Create;
    try
      with MonoBmp do begin
        Width := FOriginal.Width;
        Height := FOriginal.Height;
        Canvas.CopyRect(IRect, FOriginal.Canvas, IRect);
{$IFDEF D4CB4}
        HandleType := bmDDB;
{$ENDIF}
        Canvas.Brush.Color := OutlineColor;
        if Monochrome then begin
          Canvas.Font.Color := clWhite;
          Monochrome := False;
          Canvas.Brush.Color := clWhite;
        end;
        Monochrome := True;
      end;
      with Result.Canvas do begin
        Brush.Color := BackColor;
        FillRect(IRect);
        if DrawHighlight then begin
          Brush.Color := HighlightColor;
          SetTextColor(Handle, clBlack);
          SetBkColor(Handle, clWhite);
          BitBlt(Handle, 1, 1, IRect.Right - IRect.Left, IRect.Bottom - IRect.Top, MonoBmp.Canvas.Handle, 0, 0, ROP_DSPDxax);
        end;
        Brush.Color := ShadowColor;
        SetTextColor(Handle, clBlack);
        SetBkColor(Handle, clWhite);
        BitBlt(Handle, 0, 0, IRect.Right - IRect.Left, IRect.Bottom - IRect.Top, MonoBmp.Canvas.Handle, 0, 0, ROP_DSPDxax);
      end;
    finally
      MonoBmp.Free;
    end;
  except
    Result.Free;
    raise;
  end;
end;
//------------------------------------------------------------------------------
procedure DrawTransparentBitmap(Ahdc: HDC; Image: TBitmap; X, Y: Word; TrCol : Tcolor);
var
  TransparentColor: TColor;
  OldBackColor    : TColorRef;

  BmpBackOld,
  BmpBackNew,
  BmpImgResult,
  ObjBackOld,
  ObjBackNew,
  ObjImgResult    : HBitmap;

  HDCImgResult,
  HDCImgBackOld,
  HDCImgBackNew,
  HDCImgTmp       : HDC;
  ptSize          : TPoint;
begin
  TransparentColor := TrCol;
  TransparentColor := TransparentColor or $02000000;

  // Create a temporary Handle
  HDCImgTmp := CreateCompatibleDC (ahdc);
  SelectObject (HDCImgTmp, Image.Handle); { select the Bitmap }

  ptSize.x := Image.Width;
  ptSize.y := Image.Height;
  //DPtoLP (hdcTemp, ptSize, 1);  { convert from device logical points }

  HDCImgBackOld:= CreateCompatibleDC(ahdc);
  BmpBackOld   := CreateBitmap (ptSize.x, ptSize.y, 1, 1, nil);
  ObjBackOld   := SelectObject (HDCImgBackOld, BmpBackOld);

  HDCImgBackNew := CreateCompatibleDC(ahdc);
  BmpBackNew    := CreateBitmap (ptSize.x, ptSize.y, 1, 1, nil);
  ObjBackNew   := SelectObject (HDCImgBackNew, BmpBackNew);

  HDCImgResult    := CreateCompatibleDC(ahdc);
  BmpImgResult    := CreateCompatibleBitmap (ahdc, ptSize.x, ptSize.y);
  ObjImgResult    := SelectObject (HDCImgResult, BmpImgResult);

  //SetMapMode (hdcTemp, GetMapMode (ahdc));

  // Old Background color passed to "OldBackColor". Set Image background color to Transparent Color.
  OldBackColor:= SetBkColor (HDCImgTmp, TransparentColor);

  // "HDCImgBackNew" : Image having colors without Transparent color.
  BitBlt (HDCImgBackNew, 0, 0, ptSize.x, ptSize.y, HDCImgTmp, 0, 0, SRCCOPY);

  // Set Image background color to Old Background Color
  SetBkColor (HDCImgTmp, OldBackColor);

  // "HDCImgBackOld" : Copy of inverted "HDCImgBackNew"
  BitBlt (HDCImgBackOld, 0, 0, ptSize.x, ptSize.y, HDCImgBackNew, 0, 0, NOTSRCCOPY);

  // "HDCImgResult" : A copy of Image.
  BitBlt (HDCImgResult, 0, 0, ptSize.x, ptSize.y, ahdc, X, Y, SRCCOPY);

  // "HDCImgResult" : Mask original image with "HDCImgBackNew"
  BitBlt (HDCImgResult, 0, 0, ptSize.x, ptSize.y, HDCImgBackNew, 0, 0, SRCAND);

  // "HDCImgTmp" : Mask temporarly stored original image with "HDCImgBackOld"
  BitBlt (HDCImgTmp, 0, 0, ptSize.x, ptSize.y, HDCImgBackOld, 0, 0, SRCAND);

  // "HDCImgResult" : Union of two masked image.
  BitBlt (HDCImgResult, 0, 0, ptSize.x, ptSize.y, HDCImgTmp, 0, 0, SRCPAINT);
  BitBlt (ahdc, X, Y, ptSize.x, ptSize.y, HDCImgResult , 0, 0, SRCCOPY);

  DeleteObject (SelectObject (HDCImgTmp, ObjBackOld));
  DeleteObject (SelectObject (HDCImgBackNew, ObjBackNew));
  DeleteObject (SelectObject (HDCImgResult, ObjImgResult));
  DeleteDC     (HDCImgResult);
  DeleteDC     (HDCImgBackOld);
  DeleteDC     (HDCImgBackNew);
  DeleteDC     (HDCImgTmp);
end;
//------------------------------------------------------------------------------
function GetFontMetrics(Font: TFont): TTextMetric;
var
  DC: HDC;
  SaveFont: HFont;
begin
  DC := GetDC(0);
  SaveFont:= SelectObject(DC, Font.Handle);
  GetTextMetrics(DC, Result);
  SelectObject(DC, SaveFont);
  ReleaseDC(0, DC);
end;
//------------------------------------------------------------------------------
function GetFontHeight(Font: TFont): Integer;
begin
  with GetFontMetrics(Font) do
    Result := Round(tmHeight + tmHeight / 8);
end;
//------------------------------------------------------------------------------
procedure DrawLine(const ACanvas: TCanvas; const x1, y1, x2, y2: Integer);
begin
  ACanvas.MoveTo(x1, y1);
  ACanvas.LineTo(x2, y2);
end;
//------------------------------------------------------------------------------
procedure DrawBoundLines(const ACanvas: TCanvas; const ABoundLines: TBoundLines;
                         const AColor: TColor; const R: TRect);
begin
  with ACanvas do
  begin
    Pen.Color := AColor;
    if blLeft in ABoundLines then
      DrawLine(ACanvas, R.Left, R.Top, R.Left, R.Bottom - 1);
    if blTop in ABoundLines then
      DrawLine(ACanvas, R.Left, R.Top, R.Right - 1, R.Top);
    if blRight in ABoundLines then
      DrawLine(ACanvas, R.Right - 1, R.Top, R.Right - 1, R.Bottom - 1);
    if blBottom in ABoundLines then
      DrawLine(ACanvas, R.Top, R.Bottom - 1, R.Right, R.Bottom - 1);
  end;
end;
//------------------------------------------------------------------------------
procedure RenderText(const Parent: TControl; const Canvas: TCanvas;
                     AText: string; const AFont: TFont;
                     const Enabled, ShowAccelChar: Boolean;
                     var Rect: TRect; Flags: Integer);
  procedure DoDrawText;
  begin
    DrawText(Canvas.Handle, PChar(AText), -1, Rect, Flags);
  end;

begin
  if (Flags and DT_CALCRECT <> 0) and ((AText = '') or ShowAccelChar
   and (AText[1] = '&') and (AText[2] = #0)) then
    AText := AText + ' ';
  if not ShowAccelChar then
    Flags := Flags or DT_NOPREFIX;
  Flags := Parent.DrawTextBiDiModeFlags(Flags);
  with Canvas do begin
    Font.Assign(AFont);
    if not Enabled then begin
      OffsetRect(Rect, 1, 1);
      Font.Color := clBtnHighlight;
      DoDrawText;
      OffsetRect(Rect, -1, -1);
      Font.Color := clBtnShadow;
      DoDrawText;
    end else
      DoDrawText;
  end;
end;
//------------------------------------------------------------------------------
procedure PlaceText(const Parent: TControl; const Canvas: TCanvas; const AText: string;
  const AFont: TFont; const Enabled, ShowAccelChar: Boolean; const Alignment: TAlignment;
  const WordWrap: Boolean; var Rect: TRect);
var
  Flags, dx, OH, OW: Integer;
begin
  OH := Rect.Bottom - Rect.Top;
  OW := Rect.Right - Rect.Left;
  SetDrawFlags(Alignment, WordWrap, Flags);
  RenderText(Parent, Canvas, AText, AFont, Enabled, ShowAccelChar, Rect,
    Flags or DT_CALCRECT);
  if Alignment = taRightJustify then
    dx := OW - (Rect.Right + Rect.Left)
  else if Alignment = taCenter then
    dx := (OW - Rect.Right) div 2
  else
    dx := 0;
  OffsetRect(Rect, dx, (OH - Rect.Bottom) div 2);
  RenderText(Parent, Canvas, AText, AFont, Enabled, ShowAccelChar, Rect, Flags);
end;
//------------------------------------------------------------------------------
procedure SetDrawFlags(const Alignment: TAlignment; const WordWrap: Boolean;
  var Flags: Integer);
begin
  Flags := DT_END_ELLIPSIS;
  case Alignment of
    taLeftJustify:
      Flags := Flags or DT_LEFT;
    taCenter:
      Flags := Flags or DT_CENTER;
    taRightJustify:
      Flags := Flags or DT_RIGHT;
  end;
  if not WordWrap then
    Flags := Flags or DT_SINGLELINE
  else
    Flags := Flags or DT_WORDBREAK;
end;
//------------------------------------------------------------------------------
function ColorLighter(const Color: TColor; const Percent: Byte):TColor;
var
  R, G, B: Byte;
  FColor: TColorRef;
begin
  FColor := ColorToRGB(Color);

  R := GetRValue(FColor);
  G := GetGValue(FColor);
  B := GetBValue(FColor);

  R := R + (((255 -r) * Percent) div 100);
  G := G + (((255 -g) * Percent) div 100);
  B := B + (((255 -b) * Percent) div 100);

  Result := TColor(RGB(R, G, B));
end;
//------------------------------------------------------------------------------
function ColorDarker(const OriginalColor: TColor; const Percent: Byte): TColor;
var
  R, G, B: Integer;
  WinColor: Integer;
begin
  WinColor := ColorToRGB(OriginalColor);

  R := GetRValue(WinColor);
  G := GetGValue(WinColor);
  B := GetBValue(WinColor);

  R := R - Percent;
  G := G - Percent;
  B := B - Percent;

  if R < 0 then R := 0;
  if G < 0 then G := 0;
  if B < 0 then B := 0;

  Result := TColor(RGB(R, G, B));
end;
//------------------------------------------------------------------------------
function ColorLighterRGB(const Color: TColorRef; const Percent: Byte): TColorRef;
var
  R, G, B: Byte;
begin
  R := GetRValue(Color);
  G := GetGValue(Color);
  B := GetBValue(Color);

  R := R + (((255 -r) * Percent) div 100);
  G := G + (((255 -g) * Percent) div 100);
  B := B + (((255 -b) * Percent) div 100);

  Result := RGB(R, G, B);
end;
//------------------------------------------------------------------------------
function ColorDarkerRGB(const Color: TColorRef; const Percent: Byte): TColorRef;
var
  R, G, B: Integer;
begin
  R := GetRValue(Color);
  G := GetGValue(Color);
  B := GetBValue(Color);

  R := R - Percent;
  G := G - Percent;
  B := B - Percent;

  if R < 0 then R := 0;
  if G < 0 then G := 0;
  if B < 0 then B := 0;

  Result := RGB(R, G, B);
end;
//------------------------------------------------------------------------------
//converts multiline string (containing #13, #10 or both) into comma-delimited string
function StringToComma(const Value: string): string;
var
  S, Src: string;
  P: PChar;
  idx: Integer;
begin
  Result := '';
  Src := Value;

  repeat
    idx := Pos(#13, Src);
    if idx = 0 then
      idx := Pos(#10, Src);
    if idx = 0 then
      idx := Length(Src)+1;
    S := Copy(Src, 1, idx - 1);
    P := PChar(S);
    while not (P^ in [#0..' ','"',',']) do P := CharNext(P);
    if (P^ <> #0) then S := AnsiQuotedStr(S, '"');
    Result := Result + S;
    if idx <= Length(Src) then
      Result := Result + ',';
    if Pos(#13#10, Src) = idx then
      Src := Copy(Src, idx + 2, Length(Src))
    else
      Src := Copy(Src, idx + 1, Length(Src));
  until Src = '';
end;
//------------------------------------------------------------------------------
//converts comma-delimited string into multiline string (#13#10 is a line separator)
function CommaToString(const Value: string): string;
var
  P, P1: PChar;
  S: string;
begin
  Result := '';
  P := PChar(Value);
  while P^ in [#1..' '] do P := CharNext(P);
  while P^ <> #0 do
  begin
    if P^ = '"' then
      S := AnsiExtractQuotedStr(P, '"')
    else
    begin
      P1 := P;
      while (P^ > ' ') and (P^ <> ',') do P := CharNext(P);
      SetString(S, P1, P - P1);
    end;
    Result := Result + S;
    while P^ in [#1..' '] do P := CharNext(P);
    if P^ = ',' then
    begin
      Result := Result + #13#10;
      repeat
        P := CharNext(P);
      until not (P^ in [#1..' ']);
    end;
  end;
end;
//------------------------------------------------------------------------------
function SafeStrToInt(S : string) : integer;
var
  I : integer;
  
function IsDigit(ch : char) : boolean;
begin
  Result := (ch >= '0') and (ch <= '9');
end;
begin
  try
    S := Trim(S);
    Result := StrToInt(S);
  except
    on EConvertError do
    begin
      if S = '' then
        Result := 0
      else begin
        I := 1;
        while isDigit(S[I]) do inc(I);
        Delete(S, I, Length(S));
        if S = '' then
          Result := 0
        else
          Result := StrToInt(S);
      end;
    end;
  end;
end;
//------------------------------------------------------------------------------
function DrawDisabledText (Canvas : tCanvas; Str: PChar; Count: Integer;
                           var Rect: TRect;  Format: Word): Integer;
begin
  SetBkMode(Canvas.Handle, TRANSPARENT);

  OffsetRect(Rect, 1, 1);
  Canvas.Font.color:= ClbtnHighlight;
  DrawText (Canvas.Handle, Str, Count, Rect,Format);

  Canvas.Font.Color:= ClbtnShadow;
  OffsetRect(Rect, -1, -1);
  Result := DrawText (Canvas.Handle, Str, Count, Rect, Format);
end;
//------------------------------------------------------------------------------
function RemoveThousands(NumText : string): string;
var
  I: integer;
begin
  Result:= '';
  for I:=1 to length(NumText) do
    if NumText[I] <> FormatSettings.ThousandSeparator then Result := Result + NumText[I];

  if Result = '' then Result := '0';
end;
//------------------------------------------------------------------------------
function DecimalPos(NumText: string): integer;
begin
  Result:= Pos(FormatSettings.DecimalSeparator, NumText);
end;
//------------------------------------------------------------------------------
function Zeros(Count: integer): string;
var
  I: integer;
begin
  Result:= '';
  for I:=1 to Count do Result:=Result+'0';
end;
//------------------------------------------------------------------------------
function NumberPart(NumText: string): string;
begin
  if Pos(FormatSettings.DecimalSeparator,NumText)<>0 then
    Result:= copy(NumText, 1, DecimalPos(NumText)-1)
  else
    Result:= NumText;

   Result:=RemoveThousands(Result);
end;
//------------------------------------------------------------------------------
function DecimalPart(NumText: string; DecimalLen: integer): string;
var
  I: integer;
begin
  if DecimalPos(NumText)<>0 then
    Result:= copy(NumText, DecimalPos(NumText)+1, DecimalLen)
  else
    Result:= Zeros(DecimalLen);

  if Length(Result) < DecimalLen then
    for I:=Length(Result)+1 to DecimalLen do
      Result:= Result+'0';
end;
//------------------------------------------------------------------------------
end.
