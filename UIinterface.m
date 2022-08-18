function varargout = UIinterface(varargin)
% UIINTERFACE MATLAB code for UIinterface.fig
%      UIINTERFACE, by itself, creates a new UIINTERFACE or raises the existing
%      singleton*.
%
%      H = UIINTERFACE returns the handle to a new UIINTERFACE or the handle to
%      the existing singleton*.
%
%      UIINTERFACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UIINTERFACE.M with the given input arguments.
%
%      UIINTERFACE('Property','Value',...) creates a new UIINTERFACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before UIinterface_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to UIinterface_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help UIinterface

% Last Modified by GUIDE v2.5 25-Jun-2021 02:18:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @UIinterface_OpeningFcn, ...
                   'gui_OutputFcn',  @UIinterface_OutputFcn, ...
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


% --- Executes just before UIinterface is made visible.
function UIinterface_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to UIinterface (see VARARGIN)

% Choose default command line output for UIinterface
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes UIinterface wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = UIinterface_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
k=imread('assets/music2.jpg');
imshow(k,'border','tigh');


% --- Executes on button press in Editer.
function Editer_Callback(hObject, eventdata, handles)
% hObject    handle to Editer (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uicontrol(Editer);

% --- Executes on button press in Aditionner.
function Aditionner_Callback(hObject, eventdata, handles)
% hObject    handle to Aditionner (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uicontrol(Addition);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uicontrol(UInotes_musique);

% --- Executes on button press in Aide.
function Aide_Callback(hObject, eventdata, handles)
% hObject    handle to Aide (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
uicontrol(Aide);