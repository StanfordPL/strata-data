  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  xorb %al, %al     #  1     0    2      OPC=xorb_r8_r8       
  cwtd              #  2     0x2  2      OPC=cwtd             
  salb $0x1, %al    #  3     0x4  2      OPC=salb_r8_one      
  cmovnbw %ax, %dx  #  4     0x6  4      OPC=cmovnbw_r16_r16  
  sbbb %bh, %dh     #  5     0xa  2      OPC=sbbb_rh_rh       
  retq              #  6     0xc  1      OPC=retq             
                                                              
.size target, .-target
