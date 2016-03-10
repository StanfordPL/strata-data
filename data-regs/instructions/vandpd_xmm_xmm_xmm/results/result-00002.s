  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  vandps %xmm3, %xmm2, %xmm2      #  1     0     4      OPC=vandps_xmm_xmm_xmm  
  vmaxss %xmm2, %xmm2, %xmm1      #  2     0x4   4      OPC=vmaxss_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9  #  3     0x8   5      OPC=callq_label         
  callq .move_064_128_r8_r9_xmm1  #  4     0xd   5      OPC=callq_label         
  retq                            #  5     0x12  1      OPC=retq                
                                                                                
.size target, .-target
