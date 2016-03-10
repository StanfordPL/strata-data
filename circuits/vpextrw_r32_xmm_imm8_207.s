  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                    
.target:                              #        0     0      OPC=<label>               
  callq .move_byte_15_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label           
  vmovhlps %xmm1, %xmm1, %xmm1        #  2     0x5   4      OPC=vmovhlps_xmm_xmm_xmm  
  xorl %ebx, %ebx                     #  3     0x9   2      OPC=xorl_r32_r32          
  callq .move_byte_6_of_ymm1_to_r8b   #  4     0xb   5      OPC=callq_label           
  callq .move_008_016_r8b_r9b_bx      #  5     0x10  5      OPC=callq_label           
  retq                                #  6     0x15  1      OPC=retq                  
                                                                                      
.size target, .-target
