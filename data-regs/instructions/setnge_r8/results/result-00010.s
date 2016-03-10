  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode             
.target:                   #        0     0      OPC=<label>        
  callq .read_of_into_rcx  #  1     0     5      OPC=callq_label    
  callq .read_sf_into_rbx  #  2     0x5   5      OPC=callq_label    
  movsbq %bl, %rbx         #  3     0xa   4      OPC=movsbq_r64_r8  
  xorl %ecx, %ebx          #  4     0xe   2      OPC=xorl_r32_r32   
  retq                     #  5     0x10  1      OPC=retq           
                                                                    
.size target, .-target
