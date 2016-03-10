  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  divsd %xmm1, %xmm1                  #  1     0     4      OPC=divsd_xmm_xmm    
  callq .move_byte_15_of_ymm1_to_r9b  #  2     0x4   5      OPC=callq_label      
  callq .move_byte_14_of_ymm1_to_r8b  #  3     0x9   5      OPC=callq_label      
  movq $0x0, %rbx                     #  4     0xe   10     OPC=movq_r64_imm64   
  addw %bx, %bx                       #  5     0x18  3      OPC=addw_r16_r16     
  callq .move_008_016_r8b_r9b_bx      #  6     0x1b  5      OPC=callq_label      
  cmovnpq %rbx, %rbx                  #  7     0x20  4      OPC=cmovnpq_r64_r64  
  retq                                #  8     0x24  1      OPC=retq             
                                                                                 
.size target, .-target
