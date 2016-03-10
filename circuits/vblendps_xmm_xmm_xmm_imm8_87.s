  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                           #  Line  RIP   Bytes  Opcode                     
.target:                         #        0     0      OPC=<label>                
  movsldup %xmm3, %xmm1          #  1     0     4      OPC=movsldup_xmm_xmm       
  vmovups %xmm1, %xmm4           #  2     0x4   4      OPC=vmovups_xmm_xmm        
  vunpckhps %xmm2, %xmm4, %xmm4  #  3     0x8   4      OPC=vunpckhps_xmm_xmm_xmm  
  vmovsd %xmm3, %xmm4, %xmm1     #  4     0xc   4      OPC=vmovsd_xmm_xmm_xmm     
  retq                           #  5     0x10  1      OPC=retq                   
                                                                                  
.size target, .-target
