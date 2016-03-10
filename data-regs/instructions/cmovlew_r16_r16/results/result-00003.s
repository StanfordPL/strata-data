  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                 #  Line  RIP  Bytes  Opcode                
.target:               #        0    0      OPC=<label>           
  movzwq %bx, %r8      #  1     0    4      OPC=movzwq_r64_r16    
  xchgw %bx, %cx       #  2     0x4  3      OPC=xchgw_r16_r16     
  cmovnlel %r8d, %ebx  #  3     0x7  4      OPC=cmovnlel_r32_r32  
  retq                 #  4     0xb  1      OPC=retq              
                                                                  
.size target, .-target
