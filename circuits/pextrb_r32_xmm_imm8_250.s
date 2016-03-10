  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP  Bytes  Opcode            
.target:                              #        0    0      OPC=<label>       
  xorq %rbx, %rbx                     #  1     0    3      OPC=xorq_r64_r64  
  callq .move_byte_10_of_ymm1_to_r9b  #  2     0x3  5      OPC=callq_label   
  addb %bh, %bh                       #  3     0x8  2      OPC=addb_rh_rh    
  salb $0x1, %bh                      #  4     0xa  2      OPC=salb_rh_one   
  xchgb %bl, %r9b                     #  5     0xc  3      OPC=xchgb_r8_r8   
  retq                                #  6     0xf  1      OPC=retq          
                                                                             
.size target, .-target
