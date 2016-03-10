  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  setge %dh          #  1     0    3      OPC=setge_rh        
  xchgb %cl, %dh     #  2     0x3  2      OPC=xchgb_rh_r8     
  cmpxchgb %dh, %bh  #  3     0x5  3      OPC=cmpxchgb_rh_rh  
  retq               #  4     0x8  1      OPC=retq            
                                                              
.size target, .-target
