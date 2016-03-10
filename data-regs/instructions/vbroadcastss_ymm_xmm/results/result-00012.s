  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label           
  xaddl %r9d, %r8d                    #  2     0x5   4      OPC=xaddl_r32_r32         
  vmovq %r9, %xmm1                    #  3     0x9   5      OPC=vmovq_xmm_r64         
  callq .move_r9b_to_byte_10_of_ymm1  #  4     0xe   5      OPC=callq_label           
  vpbroadcastd %xmm1, %ymm1           #  5     0x13  5      OPC=vpbroadcastd_ymm_xmm  
  retq                                #  6     0x18  1      OPC=retq                  
                                                                                      
.size target, .-target
