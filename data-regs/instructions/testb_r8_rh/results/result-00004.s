  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP  Bytes  Opcode             
.target:                             #        0    0      OPC=<label>        
  movsbl %ah, %edx                   #  1     0    3      OPC=movsbl_r32_rh  
  callq .move_064_032_rdx_r10d_r11d  #  2     0x3  5      OPC=callq_label    
  xorw %r11w, %r10w                  #  3     0x8  4      OPC=xorw_r16_r16   
  testb %r10b, %bl                   #  4     0xc  3      OPC=testb_r8_r8    
  retq                               #  5     0xf  1      OPC=retq           
                                                                             
.size target, .-target
