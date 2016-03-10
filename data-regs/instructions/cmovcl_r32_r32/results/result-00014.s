  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode               
.target:                            #        0     0      OPC=<label>          
  movzbq %bl, %r12                  #  1     0     4      OPC=movzbq_r64_r8    
  incl %r12d                        #  2     0x4   3      OPC=incl_r32         
  cmovnal %ecx, %ebx                #  3     0x7   3      OPC=cmovnal_r32_r32  
  callq .move_byte_6_of_rbx_to_r9b  #  4     0xa   5      OPC=callq_label      
  callq .move_r9b_to_byte_4_of_rbx  #  5     0xf   5      OPC=callq_label      
  retq                              #  6     0x14  1      OPC=retq             
                                                                               
.size target, .-target
