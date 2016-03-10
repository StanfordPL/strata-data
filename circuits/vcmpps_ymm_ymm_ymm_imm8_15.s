  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                    
.target:                             #        0     0      OPC=<label>               
  vzeroall                           #  1     0     3      OPC=vzeroall              
  vdivps %ymm14, %ymm8, %ymm1        #  2     0x3   5      OPC=vdivps_ymm_ymm_ymm    
  callq .move_byte_7_of_ymm1_to_r9b  #  3     0x8   5      OPC=callq_label           
  callq .move_r9b_to_byte_0_of_ymm1  #  4     0xd   5      OPC=callq_label           
  vpbroadcastb %xmm1, %ymm1          #  5     0x12  5      OPC=vpbroadcastb_ymm_xmm  
  retq                               #  6     0x17  1      OPC=retq                  
                                                                                     
.size target, .-target
