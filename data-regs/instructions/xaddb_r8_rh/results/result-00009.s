  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                #  Line  RIP   Bytes  Opcode               
.target:              #        0     0      OPC=<label>          
  movsbw %ah, %di     #  1     0     4      OPC=movsbw_r16_rh    
  xorw %r12w, %r12w   #  2     0x4   4      OPC=xorw_r16_r16     
  setnc %bh           #  3     0x8   3      OPC=setnc_rh         
  movb %bl, %ah       #  4     0xb   2      OPC=movb_rh_r8       
  popcntw %bx, %r12w  #  5     0xd   6      OPC=popcntw_r16_r16  
  adcb %dil, %bl      #  6     0x13  3      OPC=adcb_r8_r8       
  retq                #  7     0x16  1      OPC=retq             
                                                                 
.size target, .-target
