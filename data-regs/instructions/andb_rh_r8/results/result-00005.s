  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text             #  Line  RIP  Bytes  Opcode             
.target:           #        0    0      OPC=<label>        
  andb %ah, %bl    #  1     0    2      OPC=andb_r8_rh     
  movsbw %bl, %bx  #  2     0x2  4      OPC=movsbw_r16_r8  
  movb %bl, %ah    #  3     0x6  2      OPC=movb_rh_r8     
  retq             #  4     0x8  1      OPC=retq           
                                                           
.size target, .-target
