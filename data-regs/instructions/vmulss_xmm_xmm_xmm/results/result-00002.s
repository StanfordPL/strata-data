  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  vminps %xmm3, %xmm3, %xmm1      #  1     0     4      OPC=vminps_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9  #  2     0x4   5      OPC=callq_label         
  callq .move_064_128_r8_r9_xmm1  #  3     0x9   5      OPC=callq_label         
  mulss %xmm3, %xmm1              #  4     0xe   4      OPC=mulss_xmm_xmm       
  retq                            #  5     0x12  1      OPC=retq                
                                                                                
.size target, .-target
