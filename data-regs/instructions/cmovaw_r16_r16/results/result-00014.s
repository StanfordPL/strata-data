  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP  Bytes  Opcode                
.target:                #        0    0      OPC=<label>           
  movswl %cx, %r11d     #  1     0    4      OPC=movswl_r32_r16    
  cmoval %r11d, %r11d   #  2     0x4  4      OPC=cmoval_r32_r32    
  cmovnbel %r11d, %ebx  #  3     0x8  4      OPC=cmovnbel_r32_r32  
  retq                  #  4     0xc  1      OPC=retq              
                                                                   
.size target, .-target
