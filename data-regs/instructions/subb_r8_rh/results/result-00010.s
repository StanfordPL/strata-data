  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbl %bl, %ebx  #  1     0    3      OPC=movzbl_r32_r8  
  cmpb %bh, %bh     #  2     0x3  2      OPC=cmpb_rh_rh     
  sbbb %ah, %bl     #  3     0x5  2      OPC=sbbb_r8_rh     
  retq              #  4     0x7  1      OPC=retq           
                                                            
.size target, .-target
