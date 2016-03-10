  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  vmovsldup %xmm3, %xmm7         #  1     0     4      OPC=vmovsldup_xmm_xmm      
  vunpckhps %xmm2, %xmm7, %xmm7  #  2     0x4   4      OPC=vunpckhps_xmm_xmm_xmm  
  punpcklqdq %xmm2, %xmm3        #  3     0x8   4      OPC=punpcklqdq_xmm_xmm     
  vmovupd %ymm3, %ymm1           #  4     0xc   4      OPC=vmovupd_ymm_ymm        
  unpckhpd %xmm7, %xmm1          #  5     0x10  4      OPC=unpckhpd_xmm_xmm       
  retq                           #  6     0x14  1      OPC=retq                   
                                                                                  
.size target, .-target
