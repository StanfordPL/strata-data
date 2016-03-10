  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  callq .move_128_064_xmm1_r8_r9      #  1     0     5      OPC=callq_label     
  movq $0x40, %rbx                    #  2     0x5   10     OPC=movq_r64_imm64  
  incw %r9w                           #  3     0xf   4      OPC=incw_r16        
  callq .move_byte_10_of_ymm1_to_r9b  #  4     0x13  5      OPC=callq_label     
  callq .move_byte_11_of_ymm1_to_r8b  #  5     0x18  5      OPC=callq_label     
  xchgw %r9w, %r8w                    #  6     0x1d  4      OPC=xchgw_r16_r16   
  callq .move_008_016_r8b_r9b_bx      #  7     0x21  5      OPC=callq_label     
  retq                                #  8     0x26  1      OPC=retq            
                                                                                
.size target, .-target
