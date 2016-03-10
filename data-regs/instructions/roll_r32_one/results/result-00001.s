  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP  Bytes  Opcode             
.target:                            #        0    0      OPC=<label>        
  callq .move_byte_3_of_rbx_to_r9b  #  1     0    5      OPC=callq_label    
  movsbq %r9b, %rdi                 #  2     0x5  4      OPC=movsbq_r64_r8  
  sall $0x1, %edi                   #  3     0x9  2      OPC=sall_r32_one   
  rcll $0x1, %ebx                   #  4     0xb  2      OPC=rcll_r32_one   
  retq                              #  5     0xd  1      OPC=retq           
                                                                            
.size target, .-target
