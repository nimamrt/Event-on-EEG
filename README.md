# Event-on-EEG
How to create and import event on EEG signals in the matlab

1. Download the file then copy to a folder
2. Set path this folder in environment section in matlab
3. use this code:
    [data]=bci()
4. select EEG data
5. There is 2 way for import event time:
    if enter 0 --> Automatic Time
    if enter 1 --> Manual Time
6. Enter your event time and press enter
7. open eeglab toolbox with command (eeglab) 
8. eeglab/ File/ Importevent/ by channel/ last channel number
