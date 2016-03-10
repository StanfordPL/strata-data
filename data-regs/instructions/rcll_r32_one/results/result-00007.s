  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                              #  Line  RIP   Bytes  Opcode              
.target:                            #        0     0      OPC=<label>         
  movslq %ebx, %rdx                 #  1     0     3      OPC=movslq_r64_r32  
  adcl %ebx, %ebx                   #  2     0x3   2      OPC=adcl_r32_r32    
  callq .move_016_008_dx_r8b_r9b    #  3     0x5   5      OPC=callq_label     
  movsbq %r9b, %rcx                 #  4     0xa   4      OPC=movsbq_r64_r8   
  callq .move_016_008_cx_r8b_r9b    #  5     0xe   5      OPC=callq_label     
  callq .move_byte_3_of_rbx_to_r9b  #  6     0x13  5      OPC=callq_label     
  callq .move_008_016_r8b_r9b_dx    #  7     0x18  5      OPC=callq_label     
  xorq %rax, %rax                   #  8     0x1d  3      OPC=xorq_r64_r64    
  adcl %edx, %edx                   #  9     0x20  2      OPC=adcl_r32_r32    
  retq                              #  10    0x22  1      OPC=retq            
                                                                              
.size target, .-target
