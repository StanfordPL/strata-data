  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  vmovdqu %xmm2, %xmm1         #  1     0     4      OPC=vmovdqu_xmm_xmm     
  movsldup %xmm2, %xmm2        #  2     0x4   4      OPC=movsldup_xmm_xmm    
  unpckhps %xmm3, %xmm2        #  3     0x8   3      OPC=unpckhps_xmm_xmm    
  vmovsd %xmm1, %xmm2, %xmm11  #  4     0xb   4      OPC=vmovsd_xmm_xmm_xmm  
  vmovaps %xmm11, %xmm1        #  5     0xf   5      OPC=vmovaps_xmm_xmm     
  retq                         #  6     0x14  1      OPC=retq                
                                                                             
.size target, .-target
