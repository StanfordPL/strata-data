  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label      
  movhlps %xmm5, %xmm4                          #  2     0x5   3      OPC=movhlps_xmm_xmm  
  pandn %xmm6, %xmm6                            #  3     0x8   4      OPC=pandn_xmm_xmm    
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  4     0xc   5      OPC=callq_label      
  retq                                          #  5     0x11  1      OPC=retq             
                                                                                           
.size target, .-target
