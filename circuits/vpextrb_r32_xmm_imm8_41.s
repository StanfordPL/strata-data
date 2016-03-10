  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  vaddsd %xmm1, %xmm1, %xmm1         #  1     0     4      OPC=vaddsd_xmm_xmm_xmm  
  movq $0x20, %rbx                   #  2     0x4   10     OPC=movq_r64_imm64      
  callq .move_byte_9_of_ymm1_to_r8b  #  3     0xe   5      OPC=callq_label         
  xchgb %bl, %r8b                    #  4     0x13  3      OPC=xchgb_r8_r8         
  retq                               #  5     0x16  1      OPC=retq                
                                                                                   
.size target, .-target
