create table HFJ_FORCED_ID (PID bigint not null, FORCED_ID varchar(100) not null, RESOURCE_PID bigint not null, RESOURCE_TYPE varchar(100) default '', primary key (PID));
create table HFJ_HISTORY_TAG (PID bigint not null, TAG_ID bigint, RES_ID bigint not null, RES_TYPE varchar(30) not null, RES_VER_PID bigint not null, primary key (PID));
create table HFJ_IDX_CMP_STRING_UNIQ (PID bigint not null, IDX_STRING varchar(200) not null, RES_ID bigint, primary key (PID));
create table HFJ_RES_LINK (PID bigint not null, SRC_PATH varchar(200) not null, SRC_RESOURCE_ID bigint not null, SOURCE_RESOURCE_TYPE varchar(30) not null, TARGET_RESOURCE_ID bigint, TARGET_RESOURCE_TYPE varchar(30) not null, TARGET_RESOURCE_URL varchar(200), SP_UPDATED datetime(6), primary key (PID));
create table HFJ_RES_PARAM_PRESENT (PID bigint not null, HASH_PRESENCE bigint, SP_PRESENT bit not null, RES_ID bigint not null, primary key (PID));
create table HFJ_RES_REINDEX_JOB (PID bigint not null, JOB_DELETED bit not null, RES_TYPE varchar(255), SUSPENDED_UNTIL datetime(6), UPDATE_THRESHOLD_HIGH datetime(6) not null, UPDATE_THRESHOLD_LOW datetime(6), primary key (PID));
create table HFJ_RES_TAG (PID bigint not null, TAG_ID bigint, RES_ID bigint, RES_TYPE varchar(30) not null, primary key (PID));
create table HFJ_RES_VER (PID bigint not null, RES_DELETED_AT datetime(6), RES_VERSION varchar(7), HAS_TAGS bit not null, RES_PUBLISHED datetime(6) not null, RES_UPDATED datetime(6) not null, RES_ENCODING varchar(5) not null, RES_TEXT longblob, RES_ID bigint, RES_TYPE varchar(30) not null, RES_VER bigint not null, FORCED_ID_PID bigint, primary key (PID));
create table HFJ_RESOURCE (RES_ID bigint not null, RES_DELETED_AT datetime(6), RES_VERSION varchar(7), HAS_TAGS bit not null, RES_PUBLISHED datetime(6) not null, RES_UPDATED datetime(6) not null, SP_HAS_LINKS bit, HASH_SHA256 varchar(64), SP_INDEX_STATUS bigint, RES_LANGUAGE varchar(20), SP_CMPSTR_UNIQ_PRESENT bit, SP_COORDS_PRESENT bit, SP_DATE_PRESENT bit, SP_NUMBER_PRESENT bit, SP_QUANTITY_PRESENT bit, SP_STRING_PRESENT bit, SP_TOKEN_PRESENT bit, SP_URI_PRESENT bit, RES_PROFILE varchar(200), RES_TYPE varchar(30), RES_VER bigint, FORCED_ID_PID bigint, primary key (RES_ID));
create table HFJ_SEARCH (PID bigint not null, CREATED datetime(6) not null, SEARCH_DELETED bit, FAILURE_CODE integer, FAILURE_MESSAGE varchar(500), LAST_UPDATED_HIGH datetime(6), LAST_UPDATED_LOW datetime(6), NUM_FOUND integer not null, PREFERRED_PAGE_SIZE integer, RESOURCE_ID bigint, RESOURCE_TYPE varchar(200), SEARCH_LAST_RETURNED datetime(6) not null, SEARCH_PARAM_MAP longblob, SEARCH_QUERY_STRING longtext, SEARCH_QUERY_STRING_HASH integer, SEARCH_TYPE integer not null, SEARCH_STATUS varchar(10) not null, TOTAL_COUNT integer, SEARCH_UUID varchar(36) not null, OPTLOCK_VERSION integer, primary key (PID));
create table HFJ_SEARCH_INCLUDE (PID bigint not null, SEARCH_INCLUDE varchar(200) not null, INC_RECURSE bit not null, REVINCLUDE bit not null, SEARCH_PID bigint not null, primary key (PID));
create table HFJ_SEARCH_RESULT (PID bigint not null, SEARCH_ORDER integer not null, RESOURCE_PID bigint not null, SEARCH_PID bigint not null, primary key (PID));
create table HFJ_SPIDX_COORDS (SP_ID bigint not null, SP_MISSING bit, SP_NAME varchar(100) not null, RES_ID bigint, RES_TYPE varchar(255) not null, SP_UPDATED datetime(6), HASH_IDENTITY bigint, SP_LATITUDE double precision, SP_LONGITUDE double precision, primary key (SP_ID));
create table HFJ_SPIDX_DATE (SP_ID bigint not null, SP_MISSING bit, SP_NAME varchar(100) not null, RES_ID bigint, RES_TYPE varchar(255) not null, SP_UPDATED datetime(6), HASH_IDENTITY bigint, SP_VALUE_HIGH datetime(6), SP_VALUE_LOW datetime(6), primary key (SP_ID));
create table HFJ_SPIDX_NUMBER (SP_ID bigint not null, SP_MISSING bit, SP_NAME varchar(100) not null, RES_ID bigint, RES_TYPE varchar(255) not null, SP_UPDATED datetime(6), HASH_IDENTITY bigint, SP_VALUE decimal(19,2), primary key (SP_ID));
create table HFJ_SPIDX_QUANTITY (SP_ID bigint not null, SP_MISSING bit, SP_NAME varchar(100) not null, RES_ID bigint, RES_TYPE varchar(255) not null, SP_UPDATED datetime(6), HASH_IDENTITY bigint, HASH_IDENTITY_AND_UNITS bigint, HASH_IDENTITY_SYS_UNITS bigint, SP_SYSTEM varchar(200), SP_UNITS varchar(200), SP_VALUE decimal(19,2), primary key (SP_ID));
create table HFJ_SPIDX_STRING (SP_ID bigint not null, SP_MISSING bit, SP_NAME varchar(100) not null, RES_ID bigint, RES_TYPE varchar(255) not null, SP_UPDATED datetime(6), HASH_EXACT bigint, HASH_IDENTITY bigint, HASH_NORM_PREFIX bigint, SP_VALUE_EXACT varchar(200), SP_VALUE_NORMALIZED varchar(200), primary key (SP_ID));
create table HFJ_SPIDX_TOKEN (SP_ID bigint not null, SP_MISSING bit, SP_NAME varchar(100) not null, RES_ID bigint, RES_TYPE varchar(255) not null, SP_UPDATED datetime(6), HASH_IDENTITY bigint, HASH_SYS bigint, HASH_SYS_AND_VALUE bigint, HASH_VALUE bigint, SP_SYSTEM varchar(200), SP_VALUE varchar(200), primary key (SP_ID));
create table HFJ_SPIDX_URI (SP_ID bigint not null, SP_MISSING bit, SP_NAME varchar(100) not null, RES_ID bigint, RES_TYPE varchar(255) not null, SP_UPDATED datetime(6), HASH_IDENTITY bigint, HASH_URI bigint, SP_URI varchar(255), primary key (SP_ID));
create table HFJ_SUBSCRIPTION_STATS (PID bigint not null, CREATED_TIME datetime(6) not null, RES_ID bigint, primary key (PID));
create table HFJ_TAG_DEF (TAG_ID bigint not null, TAG_CODE varchar(200), TAG_DISPLAY varchar(200), TAG_SYSTEM varchar(200), TAG_TYPE integer not null, primary key (TAG_ID));
create table SEQ_CNCPT_MAP_GRP_ELM_TGT_PID (next_val bigint);
insert into SEQ_CNCPT_MAP_GRP_ELM_TGT_PID values ( 1 );
create table SEQ_CODESYSTEM_PID (next_val bigint);
insert into SEQ_CODESYSTEM_PID values ( 1 );
create table SEQ_CODESYSTEMVER_PID (next_val bigint);
insert into SEQ_CODESYSTEMVER_PID values ( 1 );
create table SEQ_CONCEPT_DESIG_PID (next_val bigint);
insert into SEQ_CONCEPT_DESIG_PID values ( 1 );
create table SEQ_CONCEPT_MAP_GROUP_PID (next_val bigint);
insert into SEQ_CONCEPT_MAP_GROUP_PID values ( 1 );
create table SEQ_CONCEPT_MAP_GRP_ELM_PID (next_val bigint);
insert into SEQ_CONCEPT_MAP_GRP_ELM_PID values ( 1 );
create table SEQ_CONCEPT_MAP_PID (next_val bigint);
insert into SEQ_CONCEPT_MAP_PID values ( 1 );
create table SEQ_CONCEPT_PC_PID (next_val bigint);
insert into SEQ_CONCEPT_PC_PID values ( 1 );
create table SEQ_CONCEPT_PID (next_val bigint);
insert into SEQ_CONCEPT_PID values ( 1 );
create table SEQ_CONCEPT_PROP_PID (next_val bigint);
insert into SEQ_CONCEPT_PROP_PID values ( 1 );
create table SEQ_FORCEDID_ID (next_val bigint);
insert into SEQ_FORCEDID_ID values ( 1 );
create table SEQ_HISTORYTAG_ID (next_val bigint);
insert into SEQ_HISTORYTAG_ID values ( 1 );
create table SEQ_IDXCMPSTRUNIQ_ID (next_val bigint);
insert into SEQ_IDXCMPSTRUNIQ_ID values ( 1 );
create table SEQ_RES_REINDEX_JOB (next_val bigint);
insert into SEQ_RES_REINDEX_JOB values ( 1 );
create table SEQ_RESLINK_ID (next_val bigint);
insert into SEQ_RESLINK_ID values ( 1 );
create table SEQ_RESOURCE_HISTORY_ID (next_val bigint);
insert into SEQ_RESOURCE_HISTORY_ID values ( 1 );
create table SEQ_RESOURCE_ID (next_val bigint);
insert into SEQ_RESOURCE_ID values ( 1 );
create table SEQ_RESPARMPRESENT_ID (next_val bigint);
insert into SEQ_RESPARMPRESENT_ID values ( 1 );
create table SEQ_RESTAG_ID (next_val bigint);
insert into SEQ_RESTAG_ID values ( 1 );
create table SEQ_SEARCH (next_val bigint);
insert into SEQ_SEARCH values ( 1 );
create table SEQ_SEARCH_INC (next_val bigint);
insert into SEQ_SEARCH_INC values ( 1 );
create table SEQ_SEARCH_RES (next_val bigint);
insert into SEQ_SEARCH_RES values ( 1 );
create table SEQ_SPIDX_COORDS (next_val bigint);
insert into SEQ_SPIDX_COORDS values ( 1 );
create table SEQ_SPIDX_DATE (next_val bigint);
insert into SEQ_SPIDX_DATE values ( 1 );
create table SEQ_SPIDX_NUMBER (next_val bigint);
insert into SEQ_SPIDX_NUMBER values ( 1 );
create table SEQ_SPIDX_QUANTITY (next_val bigint);
insert into SEQ_SPIDX_QUANTITY values ( 1 );
create table SEQ_SPIDX_STRING (next_val bigint);
insert into SEQ_SPIDX_STRING values ( 1 );
create table SEQ_SPIDX_TOKEN (next_val bigint);
insert into SEQ_SPIDX_TOKEN values ( 1 );
create table SEQ_SPIDX_URI (next_val bigint);
insert into SEQ_SPIDX_URI values ( 1 );
create table SEQ_SUBSCRIPTION_ID (next_val bigint);
insert into SEQ_SUBSCRIPTION_ID values ( 1 );
create table SEQ_TAGDEF_ID (next_val bigint);
insert into SEQ_TAGDEF_ID values ( 1 );
create table TRM_CODESYSTEM (PID bigint not null, CODE_SYSTEM_URI varchar(255) not null, CS_NAME varchar(255), RES_ID bigint, CURRENT_VERSION_PID bigint, primary key (PID));
create table TRM_CODESYSTEM_VER (PID bigint not null, CS_VERSION_ID varchar(255), CODESYSTEM_PID bigint, RES_ID bigint not null, primary key (PID));
create table TRM_CONCEPT (PID bigint not null, CODE varchar(500) not null, CODESYSTEM_PID bigint, DISPLAY varchar(400), INDEX_STATUS bigint, PARENT_PIDS longtext, CODE_SEQUENCE integer, CONCEPT_UPDATED datetime(6), primary key (PID));
create table TRM_CONCEPT_DESIG (PID bigint not null, LANG varchar(500), USE_CODE varchar(500), USE_DISPLAY varchar(500), USE_SYSTEM varchar(500), VAL varchar(500) not null, CS_VER_PID bigint, CONCEPT_PID bigint, primary key (PID));
create table TRM_CONCEPT_MAP (PID bigint not null, RES_ID bigint, SOURCE_URL varchar(200), TARGET_URL varchar(200), URL varchar(200) not null, primary key (PID));
create table TRM_CONCEPT_MAP_GROUP (PID bigint not null, myConceptMapUrl varchar(255), SOURCE_URL varchar(200) not null, mySourceValueSet varchar(255), SOURCE_VERSION varchar(100), TARGET_URL varchar(200) not null, myTargetValueSet varchar(255), TARGET_VERSION varchar(100), CONCEPT_MAP_PID bigint not null, primary key (PID));
create table TRM_CONCEPT_MAP_GRP_ELEMENT (PID bigint not null, SOURCE_CODE varchar(500) not null, myConceptMapUrl varchar(255), SOURCE_DISPLAY varchar(400), mySystem varchar(255), mySystemVersion varchar(255), myValueSet varchar(255), CONCEPT_MAP_GROUP_PID bigint not null, primary key (PID));
create table TRM_CONCEPT_MAP_GRP_ELM_TGT (PID bigint not null, TARGET_CODE varchar(500) not null, myConceptMapUrl varchar(255), TARGET_DISPLAY varchar(400), TARGET_EQUIVALENCE varchar(50), mySystem varchar(255), mySystemVersion varchar(255), myValueSet varchar(255), CONCEPT_MAP_GRP_ELM_PID bigint not null, primary key (PID));
create table TRM_CONCEPT_PC_LINK (PID bigint not null, CHILD_PID bigint, PARENT_PID bigint, REL_TYPE integer, CODESYSTEM_PID bigint not null, primary key (PID));
create table TRM_CONCEPT_PROPERTY (PID bigint not null, PROP_CODESYSTEM varchar(500), PROP_DISPLAY varchar(500), PROP_KEY varchar(500) not null, PROP_TYPE integer not null, PROP_VAL varchar(500), CS_VER_PID bigint, CONCEPT_PID bigint, primary key (PID));
alter table HFJ_FORCED_ID add constraint IDX_FORCEDID_RESID unique (RESOURCE_PID);
alter table HFJ_FORCED_ID add constraint IDX_FORCEDID_TYPE_FID unique (RESOURCE_TYPE, FORCED_ID);
alter table HFJ_HISTORY_TAG add constraint IDX_RESHISTTAG_TAGID unique (RES_VER_PID, TAG_ID);
create index IDX_IDXCMPSTRUNIQ_RESOURCE on HFJ_IDX_CMP_STRING_UNIQ (RES_ID);
alter table HFJ_IDX_CMP_STRING_UNIQ add constraint IDX_IDXCMPSTRUNIQ_STRING unique (IDX_STRING);
create index IDX_RL_TPATHRES on HFJ_RES_LINK (SRC_PATH, TARGET_RESOURCE_ID);
create index IDX_RL_SRC on HFJ_RES_LINK (SRC_RESOURCE_ID);
create index IDX_RL_DEST on HFJ_RES_LINK (TARGET_RESOURCE_ID);
create index IDX_RESPARMPRESENT_RESID on HFJ_RES_PARAM_PRESENT (RES_ID);
create index IDX_RESPARMPRESENT_HASHPRES on HFJ_RES_PARAM_PRESENT (HASH_PRESENCE);
alter table HFJ_RES_TAG add constraint IDX_RESTAG_TAGID unique (RES_ID, TAG_ID);
create index IDX_RESVER_TYPE_DATE on HFJ_RES_VER (RES_TYPE, RES_UPDATED);
create index IDX_RESVER_ID_DATE on HFJ_RES_VER (RES_ID, RES_UPDATED);
create index IDX_RESVER_DATE on HFJ_RES_VER (RES_UPDATED);
alter table HFJ_RES_VER add constraint IDX_RESVER_ID_VER unique (RES_ID, RES_VER);
create index IDX_RES_DATE on HFJ_RESOURCE (RES_UPDATED);
create index IDX_RES_LANG on HFJ_RESOURCE (RES_TYPE, RES_LANGUAGE);
create index IDX_RES_PROFILE on HFJ_RESOURCE (RES_PROFILE);
create index IDX_RES_TYPE on HFJ_RESOURCE (RES_TYPE);
create index IDX_INDEXSTATUS on HFJ_RESOURCE (SP_INDEX_STATUS);
create index IDX_SEARCH_LASTRETURNED on HFJ_SEARCH (SEARCH_LAST_RETURNED);
create index IDX_SEARCH_RESTYPE_HASHS on HFJ_SEARCH (RESOURCE_TYPE, SEARCH_QUERY_STRING_HASH, CREATED);
alter table HFJ_SEARCH add constraint IDX_SEARCH_UUID unique (SEARCH_UUID);
alter table HFJ_SEARCH_RESULT add constraint IDX_SEARCHRES_ORDER unique (SEARCH_PID, SEARCH_ORDER);
create index IDX_SP_COORDS_HASH on HFJ_SPIDX_COORDS (HASH_IDENTITY, SP_LATITUDE, SP_LONGITUDE);
create index IDX_SP_COORDS_UPDATED on HFJ_SPIDX_COORDS (SP_UPDATED);
create index IDX_SP_COORDS_RESID on HFJ_SPIDX_COORDS (RES_ID);
create index IDX_SP_DATE_HASH on HFJ_SPIDX_DATE (HASH_IDENTITY, SP_VALUE_LOW, SP_VALUE_HIGH);
create index IDX_SP_DATE_UPDATED on HFJ_SPIDX_DATE (SP_UPDATED);
create index IDX_SP_DATE_RESID on HFJ_SPIDX_DATE (RES_ID);
create index IDX_SP_NUMBER_HASH_VAL on HFJ_SPIDX_NUMBER (HASH_IDENTITY, SP_VALUE);
create index IDX_SP_NUMBER_UPDATED on HFJ_SPIDX_NUMBER (SP_UPDATED);
create index IDX_SP_NUMBER_RESID on HFJ_SPIDX_NUMBER (RES_ID);
create index IDX_SP_QUANTITY_HASH on HFJ_SPIDX_QUANTITY (HASH_IDENTITY, SP_VALUE);
create index IDX_SP_QUANTITY_HASH_UN on HFJ_SPIDX_QUANTITY (HASH_IDENTITY_AND_UNITS, SP_VALUE);
create index IDX_SP_QUANTITY_HASH_SYSUN on HFJ_SPIDX_QUANTITY (HASH_IDENTITY_SYS_UNITS, SP_VALUE);
create index IDX_SP_QUANTITY_UPDATED on HFJ_SPIDX_QUANTITY (SP_UPDATED);
create index IDX_SP_QUANTITY_RESID on HFJ_SPIDX_QUANTITY (RES_ID);
create index IDX_SP_STRING_HASH_IDENT on HFJ_SPIDX_STRING (HASH_IDENTITY);
create index IDX_SP_STRING_HASH_NRM on HFJ_SPIDX_STRING (HASH_NORM_PREFIX, SP_VALUE_NORMALIZED);
create index IDX_SP_STRING_HASH_EXCT on HFJ_SPIDX_STRING (HASH_EXACT);
create index IDX_SP_STRING_UPDATED on HFJ_SPIDX_STRING (SP_UPDATED);
create index IDX_SP_STRING_RESID on HFJ_SPIDX_STRING (RES_ID);
create index IDX_SP_TOKEN_HASH on HFJ_SPIDX_TOKEN (HASH_IDENTITY);
create index IDX_SP_TOKEN_HASH_S on HFJ_SPIDX_TOKEN (HASH_SYS);
create index IDX_SP_TOKEN_HASH_SV on HFJ_SPIDX_TOKEN (HASH_SYS_AND_VALUE);
create index IDX_SP_TOKEN_HASH_V on HFJ_SPIDX_TOKEN (HASH_VALUE);
create index IDX_SP_TOKEN_UPDATED on HFJ_SPIDX_TOKEN (SP_UPDATED);
create index IDX_SP_TOKEN_RESID on HFJ_SPIDX_TOKEN (RES_ID);
create index IDX_SP_URI on HFJ_SPIDX_URI (RES_TYPE, SP_NAME, SP_URI);
create index IDX_SP_URI_HASH_IDENTITY on HFJ_SPIDX_URI (HASH_IDENTITY, SP_URI);
create index IDX_SP_URI_HASH_URI on HFJ_SPIDX_URI (HASH_URI);
create index IDX_SP_URI_RESTYPE_NAME on HFJ_SPIDX_URI (RES_TYPE, SP_NAME);
create index IDX_SP_URI_UPDATED on HFJ_SPIDX_URI (SP_UPDATED);
create index IDX_SP_URI_COORDS on HFJ_SPIDX_URI (RES_ID);
alter table HFJ_SUBSCRIPTION_STATS add constraint IDX_SUBSC_RESID unique (RES_ID);
alter table HFJ_TAG_DEF add constraint IDX_TAGDEF_TYPESYSCODE unique (TAG_TYPE, TAG_SYSTEM, TAG_CODE);
alter table TRM_CODESYSTEM add constraint IDX_CS_CODESYSTEM unique (CODE_SYSTEM_URI);
create index IDX_CONCEPT_INDEXSTATUS on TRM_CONCEPT (INDEX_STATUS);
create index IDX_CONCEPT_UPDATED on TRM_CONCEPT (CONCEPT_UPDATED);
alter table TRM_CONCEPT add constraint IDX_CONCEPT_CS_CODE unique (CODESYSTEM_PID, CODE);
alter table TRM_CONCEPT_MAP add constraint IDX_CONCEPT_MAP_URL unique (URL);
create index IDX_CNCPT_MAP_GRP_CD on TRM_CONCEPT_MAP_GRP_ELEMENT (SOURCE_CODE);
create index IDX_CNCPT_MP_GRP_ELM_TGT_CD on TRM_CONCEPT_MAP_GRP_ELM_TGT (TARGET_CODE);
alter table HFJ_FORCED_ID add constraint FK_FORCEDID_RESOURCE foreign key (RESOURCE_PID) references HFJ_RESOURCE (RES_ID);
alter table HFJ_HISTORY_TAG add constraint FKtderym7awj6q8iq5c51xv4ndw foreign key (TAG_ID) references HFJ_TAG_DEF (TAG_ID);
alter table HFJ_HISTORY_TAG add constraint FK_HISTORYTAG_HISTORY foreign key (RES_VER_PID) references HFJ_RES_VER (PID);
alter table HFJ_IDX_CMP_STRING_UNIQ add constraint FK_IDXCMPSTRUNIQ_RES_ID foreign key (RES_ID) references HFJ_RESOURCE (RES_ID);
alter table HFJ_RES_LINK add constraint FK_RESLINK_SOURCE foreign key (SRC_RESOURCE_ID) references HFJ_RESOURCE (RES_ID);
alter table HFJ_RES_LINK add constraint FK_RESLINK_TARGET foreign key (TARGET_RESOURCE_ID) references HFJ_RESOURCE (RES_ID);
alter table HFJ_RES_PARAM_PRESENT add constraint FK_RESPARMPRES_RESID foreign key (RES_ID) references HFJ_RESOURCE (RES_ID);
alter table HFJ_RES_TAG add constraint FKbfcjbaftmiwr3rxkwsy23vneo foreign key (TAG_ID) references HFJ_TAG_DEF (TAG_ID);
alter table HFJ_RES_TAG add constraint FK_RESTAG_RESOURCE foreign key (RES_ID) references HFJ_RESOURCE (RES_ID);
alter table HFJ_RES_VER add constraint FKh20i7lcbchkaxekvwg9ix4hc5 foreign key (FORCED_ID_PID) references HFJ_FORCED_ID (PID);
alter table HFJ_RESOURCE add constraint FKhjgj8cp879gfxko25cx5o692r foreign key (FORCED_ID_PID) references HFJ_FORCED_ID (PID);
alter table HFJ_SEARCH_INCLUDE add constraint FK_SEARCHINC_SEARCH foreign key (SEARCH_PID) references HFJ_SEARCH (PID);
alter table HFJ_SEARCH_RESULT add constraint FK_SEARCHRES_RES foreign key (RESOURCE_PID) references HFJ_RESOURCE (RES_ID);
alter table HFJ_SEARCH_RESULT add constraint FK_SEARCHRES_SEARCH foreign key (SEARCH_PID) references HFJ_SEARCH (PID);
alter table HFJ_SPIDX_COORDS add constraint FKc97mpk37okwu8qvtceg2nh9vn foreign key (RES_ID) references HFJ_RESOURCE (RES_ID);
alter table HFJ_SPIDX_DATE add constraint FK17s70oa59rm9n61k9thjqrsqm foreign key (RES_ID) references HFJ_RESOURCE (RES_ID);
alter table HFJ_SPIDX_NUMBER add constraint FKcltihnc5tgprj9bhpt7xi5otb foreign key (RES_ID) references HFJ_RESOURCE (RES_ID);
alter table HFJ_SPIDX_QUANTITY add constraint FKn603wjjoi1a6asewxbbd78bi5 foreign key (RES_ID) references HFJ_RESOURCE (RES_ID);
alter table HFJ_SPIDX_STRING add constraint FK_SPIDXSTR_RESOURCE foreign key (RES_ID) references HFJ_RESOURCE (RES_ID);
alter table HFJ_SPIDX_TOKEN add constraint FK7ulx3j1gg3v7maqrejgc7ybc4 foreign key (RES_ID) references HFJ_RESOURCE (RES_ID);
alter table HFJ_SPIDX_URI add constraint FKgxsreutymmfjuwdswv3y887do foreign key (RES_ID) references HFJ_RESOURCE (RES_ID);
alter table HFJ_SUBSCRIPTION_STATS add constraint FK_SUBSC_RESOURCE_ID foreign key (RES_ID) references HFJ_RESOURCE (RES_ID);
alter table TRM_CODESYSTEM add constraint FK_TRMCODESYSTEM_CURVER foreign key (CURRENT_VERSION_PID) references TRM_CODESYSTEM_VER (PID);
alter table TRM_CODESYSTEM add constraint FK_TRMCODESYSTEM_RES foreign key (RES_ID) references HFJ_RESOURCE (RES_ID);
alter table TRM_CODESYSTEM_VER add constraint FK_CODESYSVER_CS_ID foreign key (CODESYSTEM_PID) references TRM_CODESYSTEM (PID);
alter table TRM_CODESYSTEM_VER add constraint FK_CODESYSVER_RES_ID foreign key (RES_ID) references HFJ_RESOURCE (RES_ID);
alter table TRM_CONCEPT add constraint FK_CONCEPT_PID_CS_PID foreign key (CODESYSTEM_PID) references TRM_CODESYSTEM_VER (PID);
alter table TRM_CONCEPT_DESIG add constraint FK_CONCEPTDESIG_CSV foreign key (CS_VER_PID) references TRM_CODESYSTEM_VER (PID);
alter table TRM_CONCEPT_DESIG add constraint FK_CONCEPTDESIG_CONCEPT foreign key (CONCEPT_PID) references TRM_CONCEPT (PID);
alter table TRM_CONCEPT_MAP add constraint FK_TRMCONCEPTMAP_RES foreign key (RES_ID) references HFJ_RESOURCE (RES_ID);
alter table TRM_CONCEPT_MAP_GROUP add constraint FK_TCMGROUP_CONCEPTMAP foreign key (CONCEPT_MAP_PID) references TRM_CONCEPT_MAP (PID);
alter table TRM_CONCEPT_MAP_GRP_ELEMENT add constraint FK_TCMGELEMENT_GROUP foreign key (CONCEPT_MAP_GROUP_PID) references TRM_CONCEPT_MAP_GROUP (PID);
alter table TRM_CONCEPT_MAP_GRP_ELM_TGT add constraint FK_TCMGETARGET_ELEMENT foreign key (CONCEPT_MAP_GRP_ELM_PID) references TRM_CONCEPT_MAP_GRP_ELEMENT (PID);
alter table TRM_CONCEPT_PC_LINK add constraint FK_TERM_CONCEPTPC_CHILD foreign key (CHILD_PID) references TRM_CONCEPT (PID);
alter table TRM_CONCEPT_PC_LINK add constraint FK_TERM_CONCEPTPC_CS foreign key (CODESYSTEM_PID) references TRM_CODESYSTEM_VER (PID);
alter table TRM_CONCEPT_PC_LINK add constraint FK_TERM_CONCEPTPC_PARENT foreign key (PARENT_PID) references TRM_CONCEPT (PID);
alter table TRM_CONCEPT_PROPERTY add constraint FK_CONCEPTPROP_CSV foreign key (CS_VER_PID) references TRM_CODESYSTEM_VER (PID);
alter table TRM_CONCEPT_PROPERTY add constraint FK_CONCEPTPROP_CONCEPT foreign key (CONCEPT_PID) references TRM_CONCEPT (PID);
alter table HFJ_FORCED_ID convert to character set utf8;
alter table HFJ_HISTORY_TAG convert to character set utf8;
alter table HFJ_IDX_CMP_STRING_UNIQ convert to character set utf8;
alter table HFJ_RES_LINK convert to character set utf8;
alter table HFJ_RES_PARAM_PRESENT convert to character set utf8;
alter table HFJ_RES_REINDEX_JOB convert to character set utf8;
alter table HFJ_RES_TAG convert to character set utf8;
alter table HFJ_RES_VER convert to character set utf8;
alter table HFJ_RESOURCE convert to character set utf8;
alter table HFJ_SEARCH convert to character set utf8;
alter table HFJ_SEARCH_INCLUDE convert to character set utf8;
alter table HFJ_SEARCH_RESULT convert to character set utf8;
alter table HFJ_SPIDX_COORDS convert to character set utf8;
alter table HFJ_SPIDX_DATE convert to character set utf8;
alter table HFJ_SPIDX_NUMBER convert to character set utf8;
alter table HFJ_SPIDX_QUANTITY convert to character set utf8;
alter table HFJ_SPIDX_STRING convert to character set utf8;
alter table HFJ_SPIDX_TOKEN convert to character set utf8;
alter table HFJ_SPIDX_URI convert to character set utf8;
alter table HFJ_SUBSCRIPTION_STATS convert to character set utf8;
alter table HFJ_TAG_DEF convert to character set utf8;
alter table SEQ_CNCPT_MAP_GRP_ELM_TGT_PID convert to character set utf8;
alter table SEQ_CODESYSTEM_PID convert to character set utf8;
alter table SEQ_CODESYSTEMVER_PID convert to character set utf8;
alter table SEQ_CONCEPT_DESIG_PID convert to character set utf8;
alter table SEQ_CONCEPT_MAP_GROUP_PID convert to character set utf8;
alter table SEQ_CONCEPT_MAP_GRP_ELM_PID convert to character set utf8;
alter table SEQ_CONCEPT_MAP_PID convert to character set utf8;
alter table SEQ_CONCEPT_PC_PID convert to character set utf8;
alter table SEQ_CONCEPT_PID convert to character set utf8;
alter table SEQ_CONCEPT_PROP_PID convert to character set utf8;
alter table SEQ_FORCEDID_ID convert to character set utf8;
alter table SEQ_HISTORYTAG_ID convert to character set utf8;
alter table SEQ_IDXCMPSTRUNIQ_ID convert to character set utf8;
alter table SEQ_RES_REINDEX_JOB convert to character set utf8;
alter table SEQ_RESLINK_ID convert to character set utf8;
alter table SEQ_RESOURCE_HISTORY_ID convert to character set utf8;
alter table SEQ_RESOURCE_ID convert to character set utf8;
alter table SEQ_RESPARMPRESENT_ID convert to character set utf8;
alter table SEQ_RESTAG_ID convert to character set utf8;
alter table SEQ_SEARCH convert to character set utf8;
alter table SEQ_SEARCH_INC convert to character set utf8;
alter table SEQ_SEARCH_RES convert to character set utf8;
alter table SEQ_SPIDX_COORDS convert to character set utf8;
alter table SEQ_SPIDX_DATE convert to character set utf8;
alter table SEQ_SPIDX_NUMBER convert to character set utf8;
alter table SEQ_SPIDX_QUANTITY convert to character set utf8;
alter table SEQ_SPIDX_STRING convert to character set utf8;
alter table SEQ_SPIDX_TOKEN convert to character set utf8;
alter table SEQ_SPIDX_URI convert to character set utf8;
alter table SEQ_SUBSCRIPTION_ID convert to character set utf8;
alter table SEQ_TAGDEF_ID convert to character set utf8;
alter table TRM_CODESYSTEM convert to character set utf8;
alter table TRM_CODESYSTEM_VER convert to character set utf8;
alter table TRM_CONCEPT convert to character set utf8;
alter table TRM_CONCEPT_DESIG convert to character set utf8;
alter table TRM_CONCEPT_MAP convert to character set utf8;
alter table TRM_CONCEPT_MAP_GROUP convert to character set utf8;
alter table TRM_CONCEPT_MAP_GRP_ELEMENT convert to character set utf8;
alter table TRM_CONCEPT_MAP_GRP_ELM_TGT convert to character set utf8;
alter table TRM_CONCEPT_PC_LINK convert to character set utf8;
alter table TRM_CONCEPT_PROPERTY convert to character set utf8;