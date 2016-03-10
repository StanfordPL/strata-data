  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label      
  movlhps %xmm6, %xmm1                          #  2     0x5   3      OPC=movlhps_xmm_xmm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  3     0x8   5      OPC=callq_label      
  movss %xmm5, %xmm1                            #  4     0xd   4      OPC=movss_xmm_xmm    
  retq                                          #  5     0x11  1      OPC=retq             
                                                                                           
.size target, .-target
