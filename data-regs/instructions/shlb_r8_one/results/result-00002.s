  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  movsbl %bl, %edx                   #  1     0     3      OPC=movsbl_r32_r8    
  callq .move_032_016_edx_r10w_r11w  #  2     0x3   5      OPC=callq_label      
  callq .move_008_016_r10b_r11b_dx   #  3     0x8   5      OPC=callq_label      
  popcntq %rdx, %r10                 #  4     0xd   5      OPC=popcntq_r64_r64  
  adcb %dl, %bl                      #  5     0x12  2      OPC=adcb_r8_r8       
  retq                               #  6     0x14  1      OPC=retq             
                                                                                
.size target, .-target
