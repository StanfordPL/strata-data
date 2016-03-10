  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP  Bytes  Opcode              
.target:              #        0    0      OPC=<label>         
  cmc                 #  1     0    1      OPC=cmc             
  movl %ecx, %r14d    #  2     0x1  3      OPC=movl_r32_r32    
  xchgb %bl, %bl      #  3     0x4  2      OPC=xchgb_r8_r8     
  cmovbl %r14d, %ebx  #  4     0x6  4      OPC=cmovbl_r32_r32  
  retq                #  5     0xa  1      OPC=retq            
                                                               
.size target, .-target
