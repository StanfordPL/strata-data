  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode             
.target:                             #        0     0      OPC=<label>        
  callq .move_byte_3_of_ymm1_to_r9b  #  1     0     5      OPC=callq_label    
  movzbq %r9b, %rax                  #  2     0x5   4      OPC=movzbq_r64_r8  
  movl %eax, %ebx                    #  3     0x9   2      OPC=movl_r32_r32   
  andw %ax, %ax                      #  4     0xb   3      OPC=andw_r16_r16   
  addb %ah, %bh                      #  5     0xe   2      OPC=addb_rh_rh     
  retq                               #  6     0x10  1      OPC=retq           
                                                                              
.size target, .-target
