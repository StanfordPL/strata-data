  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode           
.target:                             #        0     0      OPC=<label>      
  callq .move_128_064_xmm2_r12_r13   #  1     0     5      OPC=callq_label  
  vzeroall                           #  2     0x5   3      OPC=vzeroall     
  callq .move_064_128_r12_r13_xmm1   #  3     0x8   5      OPC=callq_label  
  subb %bl, %bh                      #  4     0xd   2      OPC=subb_rh_r8   
  callq .move_032_016_ebx_r8w_r9w    #  5     0xf   5      OPC=callq_label  
  callq .move_r8b_to_byte_7_of_ymm1  #  6     0x14  5      OPC=callq_label  
  retq                               #  7     0x19  1      OPC=retq         
                                                                            
.size target, .-target
