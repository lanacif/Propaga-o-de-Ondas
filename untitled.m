function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 15-Sep-2020 19:58:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
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

% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

%dataset1
xlabel('z (m)');
ylabel('Amplitude');
grid();
handles.delta = 0;
handles.titulo='Meio nao-disperssivo';

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.radiobutton5, 'Value'))
	set(handles.edit6, 'Style', 'edit');
	set(handles.edit6, 'String', 0.003);
	handles.titulo = 'Meio dispersivo';
else
	set(handles.edit6, 'String', 0);
	set(handles.edit6, 'Style', 'text');
	handles.titulo = 'Meio nao-dispersivo';
end
    guidata(hObject, handles);
% Hint: get(hObject,'Value') returns toggle state of radiobutton5

% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.delta=get(hObject, 'Value')*pi/180; %recebe delta em radianos pelo slider
set(handles.edit8,'String',get(hObject, 'Value')); %mostra o angulo no text_box
guidata(hObject,handles); %atualiza os dados
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
	set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

valor = str2double(get(hObject, 'String')); %recebe o valor de delta informado na interface
if(valor >= -360 && valor <= 360) %se o valor do angulo esiver entre -360 e 360
    handles.delta=valor*pi/180; %calcula delta em radianos com o valor recebido
    set(handles.slider1,'Value',str2double(get(hObject,'String'))); %sincroniza o slider com o text_box
    guidata(hObject,handles); %atualiza os dados
else %se o angulo for invalido
    set(hObject,'String','error'); %acusa erro
end

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton1 (botao "Aplicar").
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

f = str2double(get(handles.edit1, 'string')); %recebe a frequencia da onda informada na interface
w = 2*pi*f; %calcula a frequencia angular da onda
eps = str2double(get(handles.edit4, 'string')); %recebe a permissividade do meio informada na interface
mi = str2double(get(handles.edit5, 'string')); %recebe a permeabilidade do meio informada na interface
sig = str2double(get(handles.edit6, 'string')); %recebe a condutividade do meio informada na interface 
alfa = w*sqrt((mi*eps/2)*(sqrt(1+((sig/(w*eps))^2))-1)); %calcula alfa (equação (25) do relatorio)
beta = w*sqrt((mi*eps/2)*(sqrt(1+((sig/(w*eps))^2))+1)); %calcula beta (equação (26) do relatorio)
E0 = str2double(get(handles.edit3, 'string')); %recebe a amplitude da onda informada na interface
v = 1/sqrt(eps*mi); %calcula a velocidade da onda
lamb = v/f; %calcula o comprimento da onda
z = 0:lamb/100:4*lamb; %cria um vetor de distancia baseada no comprimento de onda

if(handles.delta~=0) %se o delta informado for diferente de 0 gera-se duas componentes para o campo eletrico
    while(true) %repete inifnitamente
        for t=0:1/f/100:1/f; %101 fotos da onda no tempo
            %Para um onda que propaga em z orientada em x e y.
            Ex = E0*exp(-alfa*z).*cos(w*t-beta*z + handles.delta); %Calcula uma componente Ex do campo elétrico (equação (30) do relatorio)
            Ey = E0*exp(-alfa*z).*cos(w*t-beta*z); %Calcula uma componente Ey do campo elétrico (equação (30) do relatorio)
            %obs: o angulo delta é a defasagem entre as duas componentes informada pelo usuario
            
            %Plota o grafico (para melhor visualização 'eixo x' = deslocamento em z 'eixo y' = componente Ex 'eixo z' = Componente Ey)
            plot3(z,Ex,Ey,'k');
            title(handles.titulo);
            xlabel('z (m)');
            ylabel('Ex');
            zlabel('Ey');
            grid();
            axis([0 4*lamb -2*E0 2*E0 -2*E0 2*E0])
            pause(0.033); %Exibindo a 30fps

%Corrige um bug que criava varias figuras, após fechar o programa, com os graficos plotados. Bug de subtarefa [if e while]
            if(get(hObject, 'Value')==0)
                if(get(hObject, 'Value')==1)
                    break;
                end
            end
        end
            if(get(hObject, 'Value')==0)
                if(get(hObject, 'Value')==1)
                    break;
                end
            end
    end
else %se o delta informado for diferente de 0 gera-se uma componente para o campo eletrico
    while(true)
        for t=0:1/f/100:1/f; %101 fotos da onda no tempo
            E = E0*exp(-alfa*z).*cos(w*t-beta*z); %Calcula uma componente E do campo elétrico (equação (27) do relatorio) sem o argumento inicial
            %E = E0*exp(-alfa*z).*exp(j*(w*t-beta*z));
            
            %Plota o grafico (para melhor visualização 'eixo x' = deslocamento em z 'eixo y' = componente E) 
            plot(z,E,'k');
            title(handles.titulo);
            xlabel('z (m)');
            ylabel('Amplitude');
            grid();
            axis([0 4*lamb -2*E0 2*E0]);
            pause(0.033); %Exibindo a 30fps
            
%Corrige um bug que criava varias figuras, após fechar o programa, com os graficos plotados. Bug de subtarefa [if e while]
            if(get(hObject, 'Value')==0)
                if(get(hObject, 'Value')==1)
                    break;
                end
            end
        end
            if(get(hObject, 'Value')==0)
                if(get(hObject, 'Value')==1)
                    break;
                end
            end
    end
end
