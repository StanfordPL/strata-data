  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text              #  Line  RIP  Bytes  Opcode              
.target:            #        0    0      OPC=<label>         
  movb %cl, %bh     #  1     0    2      OPC=movb_rh_r8      
  movswq %bx, %rcx  #  2     0x2  4      OPC=movswq_r64_r16  
  movzbw %bh, %si   #  3     0x6  4      OPC=movzbw_r16_rh   
  clc               #  4     0xa  1      OPC=clc             
  adcb %sil, %bl    #  5     0xb  2      OPC=adcb_r8_r8      
  retq              #  6     0xd  1      OPC=retq            
                                                             
.size target, .-target
