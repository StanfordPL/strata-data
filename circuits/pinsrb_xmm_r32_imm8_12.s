  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  vmovd %ebx, %xmm9                   #  1     0     4      OPC=vmovd_xmm_r32         
  vpbroadcastw %xmm9, %ymm3           #  2     0x4   5      OPC=vpbroadcastw_ymm_xmm  
  callq .move_128_064_xmm3_r8_r9      #  3     0x9   5      OPC=callq_label           
  callq .move_r9b_to_byte_12_of_ymm1  #  4     0xe   5      OPC=callq_label           
  retq                                #  5     0x13  1      OPC=retq                  
                                                                                      
.size target, .-target
