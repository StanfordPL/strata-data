  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP  Bytes  Opcode            
.target:                   #        0    0      OPC=<label>       
  callq .read_zf_into_rbx  #  1     0    5      OPC=callq_label   
  movl %ebx, %ebx          #  2     0x5  2      OPC=movl_r32_r32  
  sall $0x1, %ebx          #  3     0x7  2      OPC=sall_r32_one  
  setnp %bl                #  4     0x9  3      OPC=setnp_r8      
  retq                     #  5     0xc  1      OPC=retq          
                                                                  
.size target, .-target
