  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text               #  Line  RIP  Bytes  Opcode                
.target:             #        0    0      OPC=<label>           
  setg %ah           #  1     0    3      OPC=setg_rh           
  decb %ah           #  2     0x3  2      OPC=decb_rh           
  cmovngew %cx, %bx  #  3     0x5  4      OPC=cmovngew_r16_r16  
  retq               #  4     0x9  1      OPC=retq              
                                                                
.size target, .-target
