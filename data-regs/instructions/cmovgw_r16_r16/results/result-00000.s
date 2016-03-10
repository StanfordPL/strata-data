  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  setg %dh          #  1     0    3      OPC=setg_rh          
  negb %dh          #  2     0x3  2      OPC=negb_rh          
  cmovnzw %cx, %bx  #  3     0x5  4      OPC=cmovnzw_r16_r16  
  retq              #  4     0x9  1      OPC=retq             
                                                              
.size target, .-target
