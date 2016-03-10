  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                     #  Line  RIP   Bytes  Opcode            
.target:                   #        0     0      OPC=<label>       
  setl %sil                #  1     0     4      OPC=setl_r8       
  callq .read_of_into_rbx  #  2     0x4   5      OPC=callq_label   
  roll $0x1, %ebx          #  3     0x9   2      OPC=roll_r32_one  
  movb %sil, %bl           #  4     0xb   3      OPC=movb_r8_r8    
  sall $0x1, %ebx          #  5     0xe   2      OPC=sall_r32_one  
  setz %ah                 #  6     0x10  3      OPC=setz_rh       
  retq                     #  7     0x13  1      OPC=retq          
                                                                   
.size target, .-target
