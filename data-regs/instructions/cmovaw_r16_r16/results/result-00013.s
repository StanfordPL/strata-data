  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text              #  Line  RIP  Bytes  Opcode               
.target:            #        0    0      OPC=<label>          
  seta %r11b        #  1     0    4      OPC=seta_r8          
  salb $0x1, %r11b  #  2     0x4  3      OPC=salb_r8_one      
  cmovnew %cx, %bx  #  3     0x7  4      OPC=cmovnew_r16_r16  
  retq              #  4     0xb  1      OPC=retq             
                                                              
.size target, .-target
