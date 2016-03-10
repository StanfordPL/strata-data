  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text               #  Line  RIP  Bytes  Opcode              
.target:             #        0    0      OPC=<label>         
  setl %ah           #  1     0    3      OPC=setl_rh         
  cwtd               #  2     0x3  2      OPC=cwtd            
  xorb %cl, %dh      #  3     0x5  2      OPC=xorb_rh_r8      
  cmpxchgb %dh, %bh  #  4     0x7  3      OPC=cmpxchgb_rh_rh  
  retq               #  5     0xa  1      OPC=retq            
                                                              
.size target, .-target
