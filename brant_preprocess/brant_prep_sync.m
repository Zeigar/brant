function data_fig = brant_prep_sync(brant_preps, prep_type)

% brant_path = fileparts(which('brant'));
switch(prep_type)
    case 'slicetiming'
        brant_preps.denoise.filter.tr = brant_preps.slicetiming.tr;
    case 'coregister'
        brant_preps.normalise.subj.filetype_src = brant_preps.coregister.subj.filetype_src;
        brant_preps.normalise12.subj.filetype_src = brant_preps.coregister.subj.filetype_src;
    case 'initial'
        fprintf('Parameters were set to reference values in\nslicetiming (TR), normalise (voxel size), denoise(timepoints, wholebrain mask)');
        brant_preps.denoise.filter.tr = brant_preps.slicetiming.tr;
end

data_fig = brant_preps;
