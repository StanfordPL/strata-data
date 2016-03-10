  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                              #  Line  RIP   Bytes  Opcode             
.target:                            #        0     0      OPC=<label>        
  callq .set_cf                     #  1     0     5      OPC=callq_label    
  movzbq %cl, %rax                  #  2     0x5   4      OPC=movzbq_r64_r8  
  callq .read_cf_into_rbx           #  3     0x9   5      OPC=callq_label    
  adcl %eax, %ebx                   #  4     0xe   2      OPC=adcl_r32_r32   
  callq .read_pf_into_rbx           #  5     0x10  5      OPC=callq_label    
  xchgl %eax, %ebx                  #  6     0x15  2      OPC=xchgl_r32_r32  
  callq .move_byte_4_of_rbx_to_r9b  #  7     0x17  5      OPC=callq_label    
  callq .move_r9b_to_byte_2_of_rbx  #  8     0x1c  5      OPC=callq_label    
  retq                              #  9     0x21  1      OPC=retq           
                                                                             
.size target, .-target
