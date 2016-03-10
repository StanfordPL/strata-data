  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode              
.target:              #        0     0      OPC=<label>         
  negw %bx            #  1     0     3      OPC=negw_r16        
  setns %r12b         #  2     0x3   4      OPC=setns_r8        
  movsbl %r12b, %edi  #  3     0x7   4      OPC=movsbl_r32_r8   
  movzwq %bx, %r8     #  4     0xb   4      OPC=movzwq_r64_r16  
  notq %rdi           #  5     0xf   3      OPC=notq_r64        
  xorl %edi, %ebx     #  6     0x12  2      OPC=xorl_r32_r32    
  decw %r8w           #  7     0x14  4      OPC=decw_r16        
  xaddw %bx, %r8w     #  8     0x18  5      OPC=xaddw_r16_r16   
  retq                #  9     0x1d  1      OPC=retq            
                                                                
.size target, .-target
