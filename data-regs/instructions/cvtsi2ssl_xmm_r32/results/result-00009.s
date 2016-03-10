  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovd %ebx, %xmm2                #  1     0     4      OPC=vmovd_xmm_r32            
  vcvtdq2ps %ymm2, %ymm6           #  2     0x4   4      OPC=vcvtdq2ps_ymm_ymm        
  cvtsd2ss %xmm2, %xmm1            #  3     0x8   4      OPC=cvtsd2ss_xmm_xmm         
  vfmadd132pd %ymm2, %ymm6, %ymm6  #  4     0xc   5      OPC=vfmadd132pd_ymm_ymm_ymm  
  orpd %xmm6, %xmm1                #  5     0x11  4      OPC=orpd_xmm_xmm             
  retq                             #  6     0x15  1      OPC=retq                     
                                                                                      
.size target, .-target
