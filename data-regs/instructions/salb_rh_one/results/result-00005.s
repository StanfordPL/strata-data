  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                #  Line  RIP   Bytes  Opcode             
.target:              #        0     0      OPC=<label>        
  movzbl %ah, %eax    #  1     0     3      OPC=movzbl_r32_rh  
  xchgw %ax, %ax      #  2     0x3   2      OPC=xchgw_r16_ax   
  movzbq %al, %r14    #  3     0x5   4      OPC=movzbq_r64_r8  
  movsbl %r14b, %r9d  #  4     0x9   4      OPC=movsbl_r32_r8  
  xorb %ah, %al       #  5     0xd   2      OPC=xorb_r8_rh     
  xchgl %eax, %eax    #  6     0xf   2      OPC=xchgl_r32_r32  
  adcb %r9b, %al      #  7     0x11  3      OPC=adcb_r8_r8     
  xchgb %ah, %al      #  8     0x14  2      OPC=xchgb_r8_rh    
  retq                #  9     0x16  1      OPC=retq           
                                                               
.size target, .-target
