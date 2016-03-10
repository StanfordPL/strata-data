  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                   
.target:                                #        0     0      OPC=<label>              
  pand %xmm2, %xmm3                     #  1     0     4      OPC=pand_xmm_xmm         
  vandnps %xmm3, %xmm3, %xmm1           #  2     0x4   4      OPC=vandnps_xmm_xmm_xmm  
  callq .move_256_128_ymm1_xmm10_xmm11  #  3     0x8   5      OPC=callq_label          
  vxorps %xmm3, %xmm10, %xmm1           #  4     0xd   4      OPC=vxorps_xmm_xmm_xmm   
  retq                                  #  5     0x11  1      OPC=retq                 
                                                                                       
.size target, .-target
