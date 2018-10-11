function generate(f,Vin,Vout,func,name)
    fid=fopen(['table_' name '.tex'],'w+');
    R=982;C=1e-7;L=1e-3;
    TFM=Vout./Vin;
    ETFM=func(f,R,L,C);
    TFM_db=20*log10(TFM);
    ETFM_db=20*log10(ETFM);
    fprintf(fid,'\\begin{table}[!h]\n');
    fprintf(fid,'\\begin{center}\n');
    fprintf(fid,'\\begin{tabular}{|p{2cm}|p{2cm}|p{2cm}|p{2cm}|p{2cm}|p{2cm}|p{2cm}|}\n');
    fprintf(fid,'\\hline\n');
    fprintf(fid,'Frequency & Input signal amplitude, Vppk & Output signal amplitude, Vppk & Transfer function magnitude & Expected transfer function magnitude & Transfer function magnitude, in dB & Expected transfer function magnitude, in dB \\\\\n');
    fprintf(fid,'\\hline\n');
    for i=1:length(f)
        fprintf(fid,'%.0fHz\t&\t%.2f\t&\t%.3f\t&\t%.3f\t&\t%.3f\t&\t%.3f\t&\t%.3f\t\\\\\n',f(i),Vin(i),Vout(i),TFM(i),ETFM(i),TFM_db(i),ETFM_db(i));
        fprintf(fid,'\\hline\n');
    end
    fprintf(fid,'\\end{tabular}\n');
    fprintf(fid,['\\label{tab-' name '}\n']);
    fprintf(fid,'\\end{center}\n');
    fprintf(fid,'\\end{table}\n');
    fclose(fid);
end