  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode             
.target:            #        0    0      OPC=<label>        
  movzbq %bl, %rbp  #  1     0    4      OPC=movzbq_r64_r8  
  xorw %dx, %dx     #  2     0x4  3      OPC=xorw_r16_r16   
  sbbb %cl, %dh     #  3     0x7  2      OPC=sbbb_rh_r8     
  xaddb %dh, %bl    #  4     0x9  3      OPC=xaddb_r8_rh    
  cmpb %cl, %bpl    #  5     0xc  3      OPC=cmpb_r8_r8     
  retq              #  6     0xf  1      OPC=retq           
                                                            
.size target, .-target
