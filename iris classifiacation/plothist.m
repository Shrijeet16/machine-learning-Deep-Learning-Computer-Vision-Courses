function [ h ] = plothist( A )
%CLASSHISTOGRAM Summary of this function goes here
%   Detailed explanation goes here
edges = [-1:0.1 :8];
h = histogram(A , edges , 'Normalization','pdf');
end

