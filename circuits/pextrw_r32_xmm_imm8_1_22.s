  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode                  
.target:                              #        0     0      OPC=<label>             
  movq $0x4, %rbx                     #  1     0     10     OPC=movq_r64_imm64      
  vmaxpd %xmm1, %xmm1, %xmm1          #  2     0xa   4      OPC=vmaxpd_xmm_xmm_xmm  
  callq .move_byte_13_of_ymm1_to_r9b  #  3     0xe   5      OPC=callq_label         
  callq .move_byte_12_of_ymm1_to_r8b  #  4     0x13  5      OPC=callq_label         
  callq .move_008_016_r8b_r9b_bx      #  5     0x18  5      OPC=callq_label         
  xchgb %r8b, %bl                     #  6     0x1d  3      OPC=xchgb_r8_r8         
  retq                                #  7     0x20  1      OPC=retq                
                                                                                    
.size target, .-target
