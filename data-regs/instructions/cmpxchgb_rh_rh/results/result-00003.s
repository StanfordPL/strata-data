  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text             #  Line  RIP  Bytes  Opcode              
.target:           #        0    0      OPC=<label>         
  setbe %cl        #  1     0    3      OPC=setbe_r8        
  cmpb %bh, %al    #  2     0x3  2      OPC=cmpb_r8_rh      
  movsbw %bh, %ax  #  3     0x5  4      OPC=movsbw_r16_rh   
  cmovew %cx, %bx  #  4     0x9  4      OPC=cmovew_r16_r16  
  retq             #  5     0xd  1      OPC=retq            
                                                            
.size target, .-target
