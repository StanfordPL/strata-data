  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                 
.target:                             #        0     0      OPC=<label>            
  movq $0x80, %rbx                   #  1     0     10     OPC=movq_r64_imm64     
  vmovmskpd %xmm1, %r8               #  2     0xa   4      OPC=vmovmskpd_r64_xmm  
  callq .move_r8b_to_byte_8_of_ymm1  #  3     0xe   5      OPC=callq_label        
  callq .move_byte_6_of_ymm1_to_r9b  #  4     0x13  5      OPC=callq_label        
  movb %r9b, %bl                     #  5     0x18  3      OPC=movb_r8_r8         
  retq                               #  6     0x1b  1      OPC=retq               
                                                                                  
.size target, .-target
