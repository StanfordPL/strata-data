  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode              
.target:                   #        0    0      OPC=<label>         
  movl %ecx, %edx          #  1     0    2      OPC=movl_r32_r32    
  callq .read_of_into_rcx  #  2     0x2  5      OPC=callq_label     
  shlw $0x1, %cx           #  3     0x7  3      OPC=shlw_r16_one    
  cmovpl %edx, %ebx        #  4     0xa  3      OPC=cmovpl_r32_r32  
  retq                     #  5     0xd  1      OPC=retq            
                                                                    
.size target, .-target
