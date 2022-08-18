function varargout = UInotes_musique(varargin)
% UINOTES_MUSIQUE MATLAB code for UInotes_musique.fig
%      UINOTES_MUSIQUE, by itself, creates a new UINOTES_MUSIQUE or raises the existing
%      singleton*.
%
%      H = UINOTES_MUSIQUE returns the handle to a new UINOTES_MUSIQUE or the handle to
%      the existing singleton*.
%
%      UINOTES_MUSIQUE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UINOTES_MUSIQUE.M with the given input arguments.
%
%      UINOTES_MUSIQUE('Property','Value',...) creates a new UINOTES_MUSIQUE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before UInotes_musique_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to UInotes_musique_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help UInotes_musique

% Last Modified by GUIDE v2.5 26-Jun-2021 18:47:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @UInotes_musique_OpeningFcn, ...
                   'gui_OutputFcn',  @UInotes_musique_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before UInotes_musique is made visible.
function UInotes_musique_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to UInotes_musique (see VARARGIN)

% Choose default command line output for UInotes_musique
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes UInotes_musique wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = UInotes_musique_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Do.
function Do_Callback(hObject, eventdata, handles)
% hObject    handle to Do (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=2; %Amplitude du signal
%Do: 261Hz

f_do = 261 ; %fréquence fondamentale
fsi = 8000; %fréquence d'échantillonnage;
Ni = 16000; %Nombre d'échantillon
tsi= 1/fsi; %Periode d'échantillon
T1 = Ni*tsi;
stopTime1 = T1*(1- (1/Ni));
t1 = 0:tsi:stopTime1;
v1 = 2*pi*f_do;
fase = pi/6;
note_musical = A*sin(v1*t1 +fase); 
 axes(handles.axes1);
 dr= true;
plot(t1, note_musical)
axis([0,0.003,-1.2*A,1.2*A])
global son
son= audioplayer(note_musical, fsi);
play(son)


% --- Executes on button press in Si.
function Si_Callback(hObject, eventdata, handles)
% hObject    handle to Si (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=2; %Amplitude du signal
%Si: 494Hz

f_si = 494 ; %fréquence fondamentale
fsi = 8000; %fréquence d'échantillonnage;
Ni = 16000; %Nombre d'échantillon
tsi= 1/fsi; %Periode d'échantillon
T1 = Ni*tsi;
stopTime1 = T1*(1- (1/Ni));
t1 = 0:tsi:stopTime1;
v1 = 2*pi*f_si;
fase = pi/6;
note_musical = A*sin(v1*t1 +fase);
axes(handles.axes1);
dr= true;
plot(t1, note_musical)
axis([0,0.003,-1.2*A,1.2*A])
global son
son= audioplayer(note_musical, fsi);
play(son)

% --- Executes on button press in Re.
function Re_Callback(hObject, eventdata, handles)
% hObject    handle to Re (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=2; %Amplitude du signal
%Re: 294Hz

f_re = 294 ; %fréquence fondamentale
fsi = 8000; %fréquence d'échantillonnage;
Ni = 16000; %Nombre d'échantillon
tsi= 1/fsi; %Periode d'échantillon
T1 = Ni*tsi;
stopTime1 = T1*(1- (1/Ni));
t1 = 0:tsi:stopTime1;
v1 = 2*pi*f_re;
fase = pi/6;
note_musical = A*sin(v1*t1 +fase); 
axes(handles.axes1);
dr= true;
plot(t1, note_musical)
axis([0,0.003,-1.2*A,1.2*A])
global son
son= audioplayer(note_musical, fsi);
play(son)

% --- Executes on button press in Mi.
function Mi_Callback(hObject, eventdata, handles)
% hObject    handle to Mi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=2; %Amplitude du signal
%Mi: 330Hz

f_mi = 330 ; %fréquence fondamentale
fsi = 8000; %fréquence d'échantillonnage;
Ni = 16000; %Nombre d'échantillon
tsi= 1/fsi; %Periode d'échantillon
T1 = Ni*tsi;
stopTime1 = T1*(1- (1/Ni));
t1 = 0:tsi:stopTime1;
v1 = 2*pi*f_mi;
fase = pi/6;
note_musical = A*sin(v1*t1 +fase); 
axes(handles.axes1);
dr= true;
plot(t1, note_musical)
axis([0,0.003,-1.2*A,1.2*A])
global son
son= audioplayer(note_musical, fsi);
play(son)

% --- Executes on button press in Fa.
function Fa_Callback(hObject, eventdata, handles)
% hObject    handle to Fa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=2; %Amplitude du signal
%Fa: 349Hz

f_fa = 349 ; %fréquence fondamentale
fsi = 8000; %fréquence d'échantillonnage;
Ni = 16000; %Nombre d'échantillon
tsi= 1/fsi; %Periode d'échantillon
T1 = Ni*tsi;
stopTime1 = T1*(1- (1/Ni));
t1 = 0:tsi:stopTime1;
v1 = 2*pi*f_fa;
fase = pi/6;
note_musical = A*sin(v1*t1 +fase); 
axes(handles.axes1);
dr= true;
plot(t1, note_musical)
axis([0,0.003,-1.2*A,1.2*A])
global son
son= audioplayer(note_musical, fsi);
play(son)

% --- Executes on button press in Sol.
function Sol_Callback(hObject, eventdata, handles)
% hObject    handle to Sol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=2; %Amplitude du signal
%Sol: 392Hz

f_sol = 392 ; %fréquence fondamentale
fsi = 8000; %fréquence d'échantillonnage;
Ni = 16000; %Nombre d'échantillon
tsi= 1/fsi; %Periode d'échantillon
T1 = Ni*tsi;
stopTime1 = T1*(1- (1/Ni));
t1 = 0:tsi:stopTime1;
v1 = 2*pi*f_sol;
fase = pi/6;
note_musical = A*sin(v1*t1 +fase); 
axes(handles.axes1);
dr= true;
plot(t1, note_musical)
axis([0,0.003,-1.2*A,1.2*A])
global son
son= audioplayer(note_musical, fsi);
play(son)

% --- Executes on button press in La.
function La_Callback(hObject, eventdata, handles)
% hObject    handle to La (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=2; %Amplitude du signal
%La: 440Hz

f_La = 440 ; %fréquence fondamentale
fsi = 8000; %fréquence d'échantillonnage;
Ni = 16000; %Nombre d'échantillon
tsi= 1/fsi; %Periode d'échantillon
T1 = Ni*tsi;
stopTime1 = T1*(1- (1/Ni));
t1 = 0:tsi:stopTime1;
v1 = 2*pi*f_La;
fase = pi/6;
note_musical = A*sin(v1*t1 +fase); 
axes(handles.axes1);
dr= true;
plot(t1,note_musical)
axis([0,0.003,-1.2*A,1.2*A])
global son
son= audioplayer(note_musical, fsi);
play(son)


% --- Executes on button press in Beat1.
function Beat1_Callback(hObject, eventdata, handles)
% hObject    handle to Beat1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[A, Fs]= audioread('assets/Beat_1.m4a');
axes(handles.axes1);
dr=true;
plot(A);
global player
player = audioplayer(A, Fs);
play(player)

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[A, Fs]= audioread('Beat_2.m4a');
axes(handles.axes1);
dr=true;
plot(A);
global player
player = audioplayer(A, Fs);
play(player)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[A, Fs]= audioread('assets/Beat_3.m4a');
axes(handles.axes1);
dr=true;
plot(A);
global player
player = audioplayer(A, Fs);
play(player)

% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[A, Fs]= audioread('assets/Beat_5.m4a');
axes(handles.axes1);
dr=true;
plot(A);
global player
player = audioplayer(A, Fs);
play(player)

% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[A, Fs]= audioread('assets/Beat_4.m4a');
axes(handles.axes1);
dr=true;
plot(A);
global player
player = audioplayer(A, Fs);
play(player)

% --- Executes on button press in Stop.
function Stop_Callback(hObject, eventdata, handles)
% hObject    handle to Stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global son
stop(son)

% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global player
stop(player)
