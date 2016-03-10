  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  adcb %bl, %bl     #  1     0    2      OPC=adcb_r8_r8     
  movsbl %bl, %ebx  #  2     0x2  3      OPC=movsbl_r32_r8  
  xchgl %ebx, %ebx  #  3     0x5  2      OPC=xchgl_r32_r32  
  retq              #  4     0x7  1      OPC=retq           
                                                            
.size target, .-target
