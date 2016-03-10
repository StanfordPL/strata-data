  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  orb %bl, %ah     #  1     0    2      OPC=orb_rh_r8      
  movsbw %ah, %bx  #  2     0x2  4      OPC=movsbw_r16_rh  
  retq             #  3     0x6  1      OPC=retq           
                                                           
.size target, .-target
