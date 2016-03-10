  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movb %ah, %bl     #  1     0    2      OPC=movb_r8_rh     
  movsbl %bl, %ebx  #  2     0x2  3      OPC=movsbl_r32_r8  
  retq              #  3     0x5  1      OPC=retq           
                                                            
.size target, .-target
