  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vzeroall                            #  1     0     3      OPC=vzeroall              
  callq .move_byte_27_of_ymm1_to_r8b  #  2     0x3   5      OPC=callq_label           
  decb %r8b                           #  3     0x8   3      OPC=decb_r8               
  callq .move_r8b_to_byte_0_of_ymm1   #  4     0xb   5      OPC=callq_label           
  vpbroadcastb %xmm1, %ymm1           #  5     0x10  5      OPC=vpbroadcastb_ymm_xmm  
  unpcklps %xmm1, %xmm1               #  6     0x15  3      OPC=unpcklps_xmm_xmm      
  retq                                #  7     0x18  1      OPC=retq                  
                                                                                      
.size target, .-target
