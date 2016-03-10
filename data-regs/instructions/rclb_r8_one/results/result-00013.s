  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movsbl %bl, %r8d  #  1     0    4      OPC=movsbl_r32_r8  
  adcb %r8b, %bl    #  2     0x4  3      OPC=adcb_r8_r8     
  retq              #  3     0x7  1      OPC=retq           
                                                            
.size target, .-target
