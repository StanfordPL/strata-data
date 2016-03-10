  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovd %ebx, %xmm4                #  1     0     4      OPC=vmovd_xmm_r32            
  vcvtdq2ps %xmm4, %xmm7           #  2     0x4   4      OPC=vcvtdq2ps_xmm_xmm        
  cvtsd2ss %xmm7, %xmm1            #  3     0x8   4      OPC=cvtsd2ss_xmm_xmm         
  vfmadd231pd %ymm4, %ymm7, %ymm7  #  4     0xc   5      OPC=vfmadd231pd_ymm_ymm_ymm  
  xorps %xmm7, %xmm1               #  5     0x11  3      OPC=xorps_xmm_xmm            
  retq                             #  6     0x14  1      OPC=retq                     
                                                                                      
.size target, .-target
