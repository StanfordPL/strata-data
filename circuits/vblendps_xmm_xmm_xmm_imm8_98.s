  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  movaps %xmm2, %xmm12         #  1     0     4      OPC=movaps_xmm_xmm      
  vmovss %xmm2, %xmm3, %xmm8   #  2     0x4   4      OPC=vmovss_xmm_xmm_xmm  
  vminsd %xmm8, %xmm12, %xmm1  #  3     0x8   5      OPC=vminsd_xmm_xmm_xmm  
  movsd %xmm8, %xmm1           #  4     0xd   5      OPC=movsd_xmm_xmm       
  retq                         #  5     0x12  1      OPC=retq                
                                                                             
.size target, .-target
