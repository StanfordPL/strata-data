  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP  Bytes  Opcode             
.target:                             #        0    0      OPC=<label>        
  movzbl %ah, %edx                   #  1     0    3      OPC=movzbl_r32_rh  
  callq .move_064_032_rdx_r10d_r11d  #  2     0x3  5      OPC=callq_label    
  movb %bl, %ah                      #  3     0x8  2      OPC=movb_rh_r8     
  callq .move_016_032_r10w_r11w_ebx  #  4     0xa  5      OPC=callq_label    
  retq                               #  5     0xf  1      OPC=retq           
                                                                             
.size target, .-target
