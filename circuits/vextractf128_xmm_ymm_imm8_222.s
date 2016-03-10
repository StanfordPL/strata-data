  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vcvtdq2ps %ymm1, %ymm6         #  1     0     4      OPC=vcvtdq2ps_ymm_ymm      
  maxsd %xmm1, %xmm1             #  2     0x4   4      OPC=maxsd_xmm_xmm          
  vcvtss2sd %xmm6, %xmm1, %xmm9  #  3     0x8   4      OPC=vcvtss2sd_xmm_xmm_xmm  
  vmovsd %xmm1, %xmm9, %xmm1     #  4     0xc   4      OPC=vmovsd_xmm_xmm_xmm     
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
