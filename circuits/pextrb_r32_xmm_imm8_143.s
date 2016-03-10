  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode               
.target:                              #        0     0      OPC=<label>          
  callq .move_byte_15_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label      
  movzbq %r9b, %r8                    #  2     0x5   4      OPC=movzbq_r64_r8    
  movq $0xffffffffffffffe0, %rbx      #  3     0x9   10     OPC=movq_r64_imm64   
  incb %bl                            #  4     0x13  2      OPC=incb_r8          
  cmovnzq %r8, %rbx                   #  5     0x15  4      OPC=cmovnzq_r64_r64  
  retq                                #  6     0x19  1      OPC=retq             
                                                                                 
.size target, .-target
