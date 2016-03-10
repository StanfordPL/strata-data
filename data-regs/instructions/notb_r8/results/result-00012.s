  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                           #  Line  RIP   Bytes  Opcode              
.target:                         #        0     0      OPC=<label>         
  movq $0xfffffffffffffffe, %r9  #  1     0     10     OPC=movq_r64_imm64  
  movzbl %bl, %edx               #  2     0xa   3      OPC=movzbl_r32_r8   
  incq %r9                       #  3     0xd   3      OPC=incq_r64        
  xorl %edx, %r9d                #  4     0x10  3      OPC=xorl_r32_r32    
  xchgb %bl, %r9b                #  5     0x13  3      OPC=xchgb_r8_r8     
  retq                           #  6     0x16  1      OPC=retq            
                                                                           
.size target, .-target
