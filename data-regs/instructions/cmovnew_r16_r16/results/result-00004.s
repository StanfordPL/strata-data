  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode               
.target:               #        0    0      OPC=<label>          
  movzwl %cx, %r14d    #  1     0    4      OPC=movzwl_r32_r16   
  cmovnzl %r14d, %ebx  #  2     0x4  4      OPC=cmovnzl_r32_r32  
  xchgw %bx, %bx       #  3     0x8  3      OPC=xchgw_r16_r16    
  xchgw %bx, %bx       #  4     0xb  3      OPC=xchgw_r16_r16    
  retq                 #  5     0xe  1      OPC=retq             
                                                                 
.size target, .-target
