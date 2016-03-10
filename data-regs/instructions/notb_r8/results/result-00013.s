  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP   Bytes  Opcode             
.target:            #        0     0      OPC=<label>        
  movzbl %bl, %r9d  #  1     0     4      OPC=movzbl_r32_r8  
  movzbw %bl, %dx   #  2     0x4   4      OPC=movzbw_r16_r8  
  movsbl %dh, %ebx  #  3     0x8   3      OPC=movsbl_r32_rh  
  notw %r9w         #  4     0xb   4      OPC=notw_r16       
  xorl %r9d, %ebx   #  5     0xf   3      OPC=xorl_r32_r32   
  retq              #  6     0x12  1      OPC=retq           
                                                             
.size target, .-target
