  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode             
.target:                            #        0    0      OPC=<label>        
  callq .move_128_064_xmm2_r10_r11  #  1     0    5      OPC=callq_label    
  callq .move_064_128_r10_r11_xmm3  #  2     0x5  5      OPC=callq_label    
  movss %xmm3, %xmm1                #  3     0xa  4      OPC=movss_xmm_xmm  
  retq                              #  4     0xe  1      OPC=retq           
                                                                            
.size target, .-target
