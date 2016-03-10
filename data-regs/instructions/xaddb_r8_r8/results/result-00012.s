  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbq %cl, %r12  #  1     0    4      OPC=movsbq_r64_r8  
  xorw %ax, %ax     #  2     0x4  3      OPC=xorw_r16_r16   
  movzbl %bl, %ecx  #  3     0x7  3      OPC=movzbl_r32_r8  
  adcb %r12b, %bl   #  4     0xa  3      OPC=adcb_r8_r8     
  retq              #  5     0xd  1      OPC=retq           
                                                            
.size target, .-target
