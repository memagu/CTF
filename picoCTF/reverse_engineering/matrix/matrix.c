typedef unsigned char   undefined;

typedef unsigned char    byte;
typedef unsigned char    dwfenc;
typedef unsigned int    dword;
typedef unsigned long    qword;
typedef unsigned int    uint;
typedef unsigned long    ulong;
typedef unsigned char    undefined1;
typedef unsigned short    undefined2;
typedef unsigned long    undefined8;
typedef unsigned short    ushort;
typedef unsigned short    word;
typedef struct eh_frame_hdr eh_frame_hdr, *Peh_frame_hdr;

struct eh_frame_hdr {
    byte eh_frame_hdr_version; // Exception Handler Frame Header Version
    dwfenc eh_frame_pointer_encoding; // Exception Handler Frame Pointer Encoding
    dwfenc eh_frame_desc_entry_count_encoding; // Encoding of # of Exception Handler FDEs
    dwfenc eh_frame_table_encoding; // Exception Handler Table Encoding
};

typedef struct fde_table_entry fde_table_entry, *Pfde_table_entry;

struct fde_table_entry {
    dword initial_loc; // Initial Location
    dword data_loc; // Data location
};

typedef void _IO_lock_t;

typedef struct _IO_marker _IO_marker, *P_IO_marker;

typedef struct _IO_FILE _IO_FILE, *P_IO_FILE;

typedef long __off_t;

typedef long __off64_t;

typedef ulong size_t;

struct _IO_FILE {
    int _flags;
    char * _IO_read_ptr;
    char * _IO_read_end;
    char * _IO_read_base;
    char * _IO_write_base;
    char * _IO_write_ptr;
    char * _IO_write_end;
    char * _IO_buf_base;
    char * _IO_buf_end;
    char * _IO_save_base;
    char * _IO_backup_base;
    char * _IO_save_end;
    struct _IO_marker * _markers;
    struct _IO_FILE * _chain;
    int _fileno;
    int _flags2;
    __off_t _old_offset;
    ushort _cur_column;
    char _vtable_offset;
    char _shortbuf[1];
    _IO_lock_t * _lock;
    __off64_t _offset;
    void * __pad1;
    void * __pad2;
    void * __pad3;
    void * __pad4;
    size_t __pad5;
    int _mode;
    char _unused2[20];
};

struct _IO_marker {
    struct _IO_marker * _next;
    struct _IO_FILE * _sbuf;
    int _pos;
};

typedef struct _IO_FILE FILE;

typedef enum Elf64_DynTag {
    DT_NULL=0,
    DT_NEEDED=1,
    DT_PLTRELSZ=2,
    DT_PLTGOT=3,
    DT_HASH=4,
    DT_STRTAB=5,
    DT_SYMTAB=6,
    DT_RELA=7,
    DT_RELASZ=8,
    DT_RELAENT=9,
    DT_STRSZ=10,
    DT_SYMENT=11,
    DT_INIT=12,
    DT_FINI=13,
    DT_SONAME=14,
    DT_RPATH=15,
    DT_SYMBOLIC=16,
    DT_REL=17,
    DT_RELSZ=18,
    DT_RELENT=19,
    DT_PLTREL=20,
    DT_DEBUG=21,
    DT_TEXTREL=22,
    DT_JMPREL=23,
    DT_BIND_NOW=24,
    DT_INIT_ARRAY=25,
    DT_FINI_ARRAY=26,
    DT_INIT_ARRAYSZ=27,
    DT_FINI_ARRAYSZ=28,
    DT_RUNPATH=29,
    DT_FLAGS=30,
    DT_PREINIT_ARRAY=32,
    DT_PREINIT_ARRAYSZ=33,
    DT_RELRSZ=35,
    DT_RELR=36,
    DT_RELRENT=37,
    DT_ANDROID_REL=1610612751,
    DT_ANDROID_RELSZ=1610612752,
    DT_ANDROID_RELA=1610612753,
    DT_ANDROID_RELASZ=1610612754,
    DT_ANDROID_RELR=1879040000,
    DT_ANDROID_RELRSZ=1879040001,
    DT_ANDROID_RELRENT=1879040003,
    DT_GNU_PRELINKED=1879047669,
    DT_GNU_CONFLICTSZ=1879047670,
    DT_GNU_LIBLISTSZ=1879047671,
    DT_CHECKSUM=1879047672,
    DT_PLTPADSZ=1879047673,
    DT_MOVEENT=1879047674,
    DT_MOVESZ=1879047675,
    DT_FEATURE_1=1879047676,
    DT_POSFLAG_1=1879047677,
    DT_SYMINSZ=1879047678,
    DT_SYMINENT=1879047679,
    DT_GNU_HASH=1879047925,
    DT_TLSDESC_PLT=1879047926,
    DT_TLSDESC_GOT=1879047927,
    DT_GNU_CONFLICT=1879047928,
    DT_GNU_LIBLIST=1879047929,
    DT_CONFIG=1879047930,
    DT_DEPAUDIT=1879047931,
    DT_AUDIT=1879047932,
    DT_PLTPAD=1879047933,
    DT_MOVETAB=1879047934,
    DT_SYMINFO=1879047935,
    DT_VERSYM=1879048176,
    DT_RELACOUNT=1879048185,
    DT_RELCOUNT=1879048186,
    DT_FLAGS_1=1879048187,
    DT_VERDEF=1879048188,
    DT_VERDEFNUM=1879048189,
    DT_VERNEED=1879048190,
    DT_VERNEEDNUM=1879048191,
    DT_AUXILIARY=2147483645,
    DT_FILTER=2147483647
} Elf64_DynTag;

typedef enum Elf_ProgramHeaderType {
    PT_NULL=0,
    PT_LOAD=1,
    PT_DYNAMIC=2,
    PT_INTERP=3,
    PT_NOTE=4,
    PT_SHLIB=5,
    PT_PHDR=6,
    PT_TLS=7,
    PT_GNU_EH_FRAME=1685382480,
    PT_GNU_STACK=1685382481,
    PT_GNU_RELRO=1685382482
} Elf_ProgramHeaderType;

typedef struct Elf64_Shdr Elf64_Shdr, *PElf64_Shdr;

typedef enum Elf_SectionHeaderType {
    SHT_NULL=0,
    SHT_PROGBITS=1,
    SHT_SYMTAB=2,
    SHT_STRTAB=3,
    SHT_RELA=4,
    SHT_HASH=5,
    SHT_DYNAMIC=6,
    SHT_NOTE=7,
    SHT_NOBITS=8,
    SHT_REL=9,
    SHT_SHLIB=10,
    SHT_DYNSYM=11,
    SHT_INIT_ARRAY=14,
    SHT_FINI_ARRAY=15,
    SHT_PREINIT_ARRAY=16,
    SHT_GROUP=17,
    SHT_SYMTAB_SHNDX=18,
    SHT_ANDROID_REL=1610612737,
    SHT_ANDROID_RELA=1610612738,
    SHT_GNU_ATTRIBUTES=1879048181,
    SHT_GNU_HASH=1879048182,
    SHT_GNU_LIBLIST=1879048183,
    SHT_CHECKSUM=1879048184,
    SHT_SUNW_move=1879048186,
    SHT_SUNW_COMDAT=1879048187,
    SHT_SUNW_syminfo=1879048188,
    SHT_GNU_verdef=1879048189,
    SHT_GNU_verneed=1879048190,
    SHT_GNU_versym=1879048191
} Elf_SectionHeaderType;

struct Elf64_Shdr {
    dword sh_name;
    enum Elf_SectionHeaderType sh_type;
    qword sh_flags;
    qword sh_addr;
    qword sh_offset;
    qword sh_size;
    dword sh_link;
    dword sh_info;
    qword sh_addralign;
    qword sh_entsize;
};

typedef struct Elf64_Dyn Elf64_Dyn, *PElf64_Dyn;

struct Elf64_Dyn {
    enum Elf64_DynTag d_tag;
    qword d_val;
};

typedef struct Elf64_Phdr Elf64_Phdr, *PElf64_Phdr;

struct Elf64_Phdr {
    enum Elf_ProgramHeaderType p_type;
    dword p_flags;
    qword p_offset;
    qword p_vaddr;
    qword p_paddr;
    qword p_filesz;
    qword p_memsz;
    qword p_align;
};

typedef struct Elf64_Rela Elf64_Rela, *PElf64_Rela;

struct Elf64_Rela {
    qword r_offset; // location to apply the relocation action
    qword r_info; // the symbol table index and the type of relocation
    qword r_addend; // a constant addend used to compute the relocatable field value
};

typedef struct Gnu_BuildId Gnu_BuildId, *PGnu_BuildId;

struct Gnu_BuildId {
    dword namesz; // Length of name field
    dword descsz; // Length of description field
    dword type; // Vendor specific type
    char name[4]; // Build-id vendor name
    byte description[20]; // Build-id value
};

typedef struct Elf64_Ehdr Elf64_Ehdr, *PElf64_Ehdr;

struct Elf64_Ehdr {
    byte e_ident_magic_num;
    char e_ident_magic_str[3];
    byte e_ident_class;
    byte e_ident_data;
    byte e_ident_version;
    byte e_ident_osabi;
    byte e_ident_abiversion;
    byte e_ident_pad[7];
    word e_type;
    word e_machine;
    dword e_version;
    qword e_entry;
    qword e_phoff;
    qword e_shoff;
    dword e_flags;
    word e_ehsize;
    word e_phentsize;
    word e_phnum;
    word e_shentsize;
    word e_shnum;
    word e_shstrndx;
};

typedef struct Elf64_Sym Elf64_Sym, *PElf64_Sym;

struct Elf64_Sym {
    dword st_name;
    byte st_info;
    byte st_other;
    word st_shndx;
    qword st_value;
    qword st_size;
};




void _DT_INIT(void)

{
  __gmon_start__();
  return;
}



void FUN_00101020(void)

{
                    // WARNING: Treating indirect jump as call
  (*(code *)(undefined *)0x0)();
  return;
}



// WARNING: Unknown calling convention yet parameter storage is locked

void free(void *__ptr)

{
  free(__ptr);
  return;
}



// WARNING: Unknown calling convention yet parameter storage is locked

int puts(char *__s)

{
  int iVar1;
  
  iVar1 = puts(__s);
  return iVar1;
}



// WARNING: Unknown calling convention yet parameter storage is locked

int fclose(FILE *__stream)

{
  int iVar1;
  
  iVar1 = fclose(__stream);
  return iVar1;
}



void __stack_chk_fail(void)

{
                    // WARNING: Subroutine does not return
  __stack_chk_fail();
}



// WARNING: Unknown calling convention yet parameter storage is locked

char * fgets(char *__s,int __n,FILE *__stream)

{
  char *pcVar1;
  
  pcVar1 = fgets(__s,__n,__stream);
  return pcVar1;
}



// WARNING: Unknown calling convention yet parameter storage is locked

void * malloc(size_t __size)

{
  void *pvVar1;
  
  pvVar1 = malloc(__size);
  return pvVar1;
}



// WARNING: Unknown calling convention yet parameter storage is locked

int setvbuf(FILE *__stream,char *__buf,int __modes,size_t __n)

{
  int iVar1;
  
  iVar1 = setvbuf(__stream,__buf,__modes,__n);
  return iVar1;
}



// WARNING: Unknown calling convention yet parameter storage is locked

FILE * fopen(char *__filename,char *__modes)

{
  FILE *pFVar1;
  
  pFVar1 = fopen(__filename,__modes);
  return pFVar1;
}



// WARNING: Unknown calling convention yet parameter storage is locked

int getc(FILE *__stream)

{
  int iVar1;
  
  iVar1 = getc(__stream);
  return iVar1;
}



ulong FUN_001010d0(void)

{
  char cVar1;
  void *__ptr;
  void *__ptr_00;
  ulong uVar2;
  FILE *__stream;
  long in_FS_OFFSET;
  char local_16c [2];
  ushort local_16a;
  undefined *local_168;
  undefined2 local_160;
  void *local_158;
  void *pvStack336;
  code *local_148;
  code *pcStack320;
  char local_138 [264];
  long local_30;
  
  local_30 = *(long *)(in_FS_OFFSET + 0x28);
  setvbuf(stdout,(char *)0x0,1,0x2000);
  __ptr = malloc(0x800);
  __ptr_00 = malloc(0x800);
  local_168 = &DAT_001020f0;
  local_160 = 0;
  local_148 = FUN_00101320;
  pcStack320 = FUN_00101340;
  local_158 = __ptr;
  pvStack336 = __ptr_00;
  do {
    cVar1 = FUN_00101350(&local_168,local_16c);
  } while (cVar1 != '\0');
  free(__ptr);
  free(__ptr_00);
  if (local_16c[0] == '\0') {
    if (local_16a == 0) {
      puts("Have a flag!");
      __stream = fopen("flag.txt","r");
      fgets(local_138,0x100,__stream);
      fclose(__stream);
      puts(local_138);
    }
    uVar2 = (ulong)local_16a;
  }
  else {
    uVar2 = 0xffffffff;
  }
  if (local_30 == *(long *)(in_FS_OFFSET + 0x28)) {
    return uVar2;
  }
                    // WARNING: Subroutine does not return
  __stack_chk_fail();
}



void entry(undefined8 param_1,undefined8 param_2,undefined8 param_3)

{
  undefined8 in_stack_00000000;
  undefined auStack8 [8];
  
  __libc_start_main(FUN_001010d0,in_stack_00000000,&stack0x00000008,FUN_001015f0,FUN_00101660,
                    param_3,auStack8);
  do {
                    // WARNING: Do nothing block with infinite loop
  } while( true );
}



// WARNING: Removing unreachable block (ram,0x00101263)
// WARNING: Removing unreachable block (ram,0x0010126f)

void FUN_00101250(void)

{
  return;
}



// WARNING: Removing unreachable block (ram,0x001012a4)
// WARNING: Removing unreachable block (ram,0x001012b0)

void FUN_00101280(void)

{
  return;
}



void _FINI_0(void)

{
  if (DAT_00104098 != '\0') {
    return;
  }
  __cxa_finalize(PTR_LOOP_00104070);
  FUN_00101250();
  DAT_00104098 = 1;
  return;
}



void _INIT_0(void)

{
  FUN_00101280();
  return;
}



void FUN_00101320(void)

{
  getc(stdin);
  return;
}



void FUN_00101340(byte param_1)

{
  putc((uint)param_1,stdout);
  return;
}



undefined8 FUN_00101350(long *param_1,undefined *param_2)

{
  undefined uVar1;
  ushort uVar2;
  short sVar3;
  long lVar4;
  short *psVar5;
  undefined2 *puVar6;
  ushort *puVar7;
  byte bVar8;
  ushort uVar9;
  undefined2 uVar10;
  short sVar11;
  
  lVar4 = *param_1;
  uVar2 = *(ushort *)(param_1 + 1);
  uVar9 = uVar2 + 1;
  *(ushort *)(param_1 + 1) = uVar9;
  bVar8 = *(byte *)(lVar4 + (ulong)uVar2);
  switch(bVar8) {
  case 0:
    break;
  case 1:
    if (param_2 == (undefined *)0x0) {
      return 0;
    }
    lVar4 = param_1[2];
    *param_2 = 0;
    uVar10 = *(undefined2 *)(lVar4 + -2);
    param_1[2] = lVar4 + -2;
    *(undefined2 *)(param_2 + 2) = uVar10;
    return 0;
  case 0x10:
    puVar6 = (undefined2 *)param_1[2];
    uVar10 = puVar6[-1];
    param_1[2] = (long)(puVar6 + 1);
    *puVar6 = uVar10;
    return 1;
  case 0x11:
    param_1[2] = param_1[2] + -2;
    return 1;
  case 0x12:
    lVar4 = param_1[2];
    sVar3 = *(short *)(lVar4 + -2);
    sVar11 = *(short *)(lVar4 + -4);
    param_1[2] = lVar4 + -2;
    *(short *)(lVar4 + -4) = sVar3 + sVar11;
    return 1;
  case 0x13:
    lVar4 = param_1[2];
    sVar3 = *(short *)(lVar4 + -4);
    sVar11 = *(short *)(lVar4 + -2);
    param_1[2] = lVar4 + -2;
    *(short *)(lVar4 + -4) = sVar3 - sVar11;
    return 1;
  case 0x14:
    lVar4 = param_1[2];
    uVar10 = *(undefined2 *)(lVar4 + -4);
    *(undefined2 *)(lVar4 + -4) = *(undefined2 *)(lVar4 + -2);
    param_1[2] = lVar4;
    *(undefined2 *)(lVar4 + -2) = uVar10;
    return 1;
  case 0x20:
    lVar4 = param_1[2];
    param_1[2] = lVar4 + -2;
    uVar10 = *(undefined2 *)(lVar4 + -2);
    puVar6 = (undefined2 *)param_1[3];
    param_1[3] = (long)(puVar6 + 1);
    *puVar6 = uVar10;
    return 1;
  case 0x21:
    lVar4 = param_1[3];
    param_1[3] = lVar4 + -2;
    uVar10 = *(undefined2 *)(lVar4 + -2);
    puVar6 = (undefined2 *)param_1[2];
    param_1[2] = (long)(puVar6 + 1);
    *puVar6 = uVar10;
    return 1;
  case 0x30:
    uVar10 = *(undefined2 *)(param_1[2] + -2);
    param_1[2] = param_1[2] + -2;
    *(undefined2 *)(param_1 + 1) = uVar10;
    return 1;
  case 0x31:
    lVar4 = param_1[2];
    sVar11 = *(short *)(lVar4 + -4);
    uVar10 = *(undefined2 *)(lVar4 + -2);
    param_1[2] = lVar4 + -4;
    if (sVar11 == 0) {
LAB_0010154b:
      *(undefined2 *)(param_1 + 1) = uVar10;
      return 1;
    }
    break;
  case 0x32:
    lVar4 = param_1[2];
    sVar11 = *(short *)(lVar4 + -4);
    uVar10 = *(undefined2 *)(lVar4 + -2);
    param_1[2] = lVar4 + -4;
    if (sVar11 != 0) goto LAB_0010154b;
    break;
  case 0x33:
    lVar4 = param_1[2];
    sVar11 = *(short *)(lVar4 + -4);
    uVar10 = *(undefined2 *)(lVar4 + -2);
    param_1[2] = lVar4 + -4;
    if (sVar11 < 0) goto LAB_0010154b;
    break;
  case 0x34:
    lVar4 = param_1[2];
    sVar11 = *(short *)(lVar4 + -4);
    uVar10 = *(undefined2 *)(lVar4 + -2);
    param_1[2] = lVar4 + -4;
    if (sVar11 < 1) goto LAB_0010154b;
    break;
  default:
    if (bVar8 == 0xc0) {
      bVar8 = (*(code *)param_1[4])();
      puVar7 = (ushort *)param_1[2];
      param_1[2] = (long)(puVar7 + 1);
      *puVar7 = (ushort)bVar8;
      return 1;
    }
    if (bVar8 < 0xc1) {
      if (bVar8 == 0x80) {
        sVar3 = 2;
        sVar11 = (short)*(char *)(lVar4 + (ulong)uVar9);
      }
      else {
        if (bVar8 != 0x81) goto switchD_0010137b_caseD_2;
        sVar3 = 3;
        sVar11 = *(short *)(lVar4 + (ulong)uVar9);
      }
      psVar5 = (short *)param_1[2];
      *(ushort *)(param_1 + 1) = uVar2 + sVar3;
      param_1[2] = (long)(psVar5 + 1);
      *psVar5 = sVar11;
      return 1;
    }
    if (bVar8 == 0xc1) {
      uVar1 = *(undefined *)(param_1[2] + -2);
      param_1[2] = param_1[2] + -2;
      (*(code *)param_1[5])(uVar1);
      return 1;
    }
  case 2:
  case 3:
  case 4:
  case 5:
  case 6:
  case 7:
  case 8:
  case 9:
  case 10:
  case 0xb:
  case 0xc:
  case 0xd:
  case 0xe:
  case 0xf:
  case 0x15:
  case 0x16:
  case 0x17:
  case 0x18:
  case 0x19:
  case 0x1a:
  case 0x1b:
  case 0x1c:
  case 0x1d:
  case 0x1e:
  case 0x1f:
  case 0x22:
  case 0x23:
  case 0x24:
  case 0x25:
  case 0x26:
  case 0x27:
  case 0x28:
  case 0x29:
  case 0x2a:
  case 0x2b:
  case 0x2c:
  case 0x2d:
  case 0x2e:
  case 0x2f:
switchD_0010137b_caseD_2:
    if (param_2 == (undefined *)0x0) {
      return 0;
    }
    *param_2 = 1;
    return 0;
  }
  return 1;
}



void FUN_001015f0(undefined4 param_1,undefined8 param_2,undefined8 param_3)

{
  long lVar1;
  
  _DT_INIT();
  lVar1 = 0;
  do {
    (*(code *)(&__DT_INIT_ARRAY)[lVar1])(param_1,param_2,param_3);
    lVar1 = lVar1 + 1;
  } while (lVar1 != 1);
  return;
}



void FUN_00101660(void)

{
  return;
}



void _DT_FINI(void)

{
  return;
}


