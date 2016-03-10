  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vsubsd %xmm2, %xmm2, %xmm5     #  1     0     4      OPC=vsubsd_xmm_xmm_xmm    
  vmovhlps %xmm5, %xmm3, %xmm12  #  2     0x4   4      OPC=vmovhlps_xmm_xmm_xmm  
  vpbroadcastq %xmm12, %xmm1     #  3     0x8   5      OPC=vpbroadcastq_xmm_xmm  
  punpckhqdq %xmm12, %xmm1       #  4     0xd   5      OPC=punpckhqdq_xmm_xmm    
  retq                           #  5     0x12  1      OPC=retq                  
                                                                                 
.size target, .-target
