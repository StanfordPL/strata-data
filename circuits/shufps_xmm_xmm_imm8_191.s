  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vmovsldup %xmm2, %xmm10         #  1     0     4      OPC=vmovsldup_xmm_xmm      
  movshdup %xmm1, %xmm1           #  2     0x4   4      OPC=movshdup_xmm_xmm       
  vunpckhps %xmm10, %xmm2, %xmm7  #  3     0x8   5      OPC=vunpckhps_xmm_xmm_xmm  
  punpckhqdq %xmm7, %xmm1         #  4     0xd   4      OPC=punpckhqdq_xmm_xmm     
  retq                            #  5     0x11  1      OPC=retq                   
                                                                                   
.size target, .-target
