  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode            
.target:                                        #        0     0      OPC=<label>       
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label   
  callq .move_byte_7_of_ymm1_to_r9b             #  2     0x5   5      OPC=callq_label   
  callq .move_byte_6_of_ymm1_to_r8b             #  3     0xa   5      OPC=callq_label   
  andw %r10w, %r13w                             #  4     0xf   4      OPC=andw_r16_r16  
  callq .read_zf_into_rbx                       #  5     0x13  5      OPC=callq_label   
  callq .move_008_016_r8b_r9b_bx                #  6     0x18  5      OPC=callq_label   
  retq                                          #  7     0x1d  1      OPC=retq          
                                                                                        
.size target, .-target
