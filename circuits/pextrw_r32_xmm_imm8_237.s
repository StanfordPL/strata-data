  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                
.target:                              #        0     0      OPC=<label>           
  unpckhpd %xmm1, %xmm1               #  1     0     4      OPC=unpckhpd_xmm_xmm  
  xorl %ebx, %ebx                     #  2     0x4   2      OPC=xorl_r32_r32      
  callq .move_byte_11_of_ymm1_to_r9b  #  3     0x6   5      OPC=callq_label       
  callq .move_byte_2_of_ymm1_to_r8b   #  4     0xb   5      OPC=callq_label       
  callq .move_008_016_r8b_r9b_bx      #  5     0x10  5      OPC=callq_label       
  retq                                #  6     0x15  1      OPC=retq              
                                                                                  
.size target, .-target
