  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  movzbw %al, %dx    #  1     0    4      OPC=movzbw_r16_r8   
  addb %cl, %dh      #  2     0x4  2      OPC=addb_rh_r8      
  cmpxchgb %dh, %bh  #  3     0x6  3      OPC=cmpxchgb_rh_rh  
  retq               #  4     0x9  1      OPC=retq            
                                                              
.size target, .-target
