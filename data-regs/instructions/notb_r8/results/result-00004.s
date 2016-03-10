  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text           #  Line  RIP  Bytes  Opcode          
.target:         #        0    0      OPC=<label>     
  xorb %cl, %cl  #  1     0    2      OPC=xorb_r8_r8  
  setnp %bh      #  2     0x2  3      OPC=setnp_rh    
  notw %bx       #  3     0x5  3      OPC=notw_r16    
  retq           #  4     0x8  1      OPC=retq        
                                                      
.size target, .-target
