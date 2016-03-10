  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label           
  vzeroall                            #  2     0x5   3      OPC=vzeroall              
  callq .move_byte_11_of_ymm1_to_r8b  #  3     0x8   5      OPC=callq_label           
  decb %r8b                           #  4     0xd   3      OPC=decb_r8               
  callq .move_064_128_r8_r9_xmm1      #  5     0x10  5      OPC=callq_label           
  vpbroadcastb %xmm1, %ymm13          #  6     0x15  5      OPC=vpbroadcastb_ymm_xmm  
  minss %xmm13, %xmm1                 #  7     0x1a  5      OPC=minss_xmm_xmm         
  retq                                #  8     0x1f  1      OPC=retq                  
                                                                                      
.size target, .-target
