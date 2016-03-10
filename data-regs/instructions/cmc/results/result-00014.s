  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text              #  Line  RIP  Bytes  Opcode           
.target:            #        0    0      OPC=<label>      
  setnc %r11b       #  1     0    4      OPC=setnc_r8     
  shlb $0x1, %r11b  #  2     0x4  3      OPC=shlb_r8_one  
  setbe %dl         #  3     0x7  3      OPC=setbe_r8     
  decb %dl          #  4     0xa  2      OPC=decb_r8      
  rolb $0x1, %dl    #  5     0xc  2      OPC=rolb_r8_one  
  retq              #  6     0xe  1      OPC=retq         
                                                          
.size target, .-target
