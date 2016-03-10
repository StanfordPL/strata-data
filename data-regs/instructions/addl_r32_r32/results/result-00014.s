  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  xorw %ax, %ax     #  1     0    3      OPC=xorw_r16_r16   
  adcb %ah, %bl     #  2     0x3  2      OPC=adcb_r8_rh     
  xaddl %ebx, %ecx  #  3     0x5  3      OPC=xaddl_r32_r32  
  xchgl %ecx, %ebx  #  4     0x8  2      OPC=xchgl_r32_r32  
  retq              #  5     0xa  1      OPC=retq           
                                                            
.size target, .-target
