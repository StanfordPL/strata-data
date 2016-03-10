  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text               #  Line  RIP  Bytes  Opcode             
.target:             #        0    0      OPC=<label>        
  movsbl %ah, %edx   #  1     0    3      OPC=movsbl_r32_rh  
  movsbl %dh, %edi   #  2     0x3  3      OPC=movsbl_r32_rh  
  xorw %r11w, %r11w  #  3     0x6  4      OPC=xorw_r16_r16   
  rcll $0x1, %edx    #  4     0xa  2      OPC=rcll_r32_one   
  xchgl %edx, %edi   #  5     0xc  2      OPC=xchgl_r32_r32  
  retq               #  6     0xe  1      OPC=retq           
                                                             
.size target, .-target
