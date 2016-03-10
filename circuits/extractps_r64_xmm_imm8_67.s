  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_r10d_r11d_r12d_r13d  #  1     0     5      OPC=callq_label      
  blsrl %r13d, %ebx                             #  2     0x5   5      OPC=blsrl_r32_r32    
  shlw $0x1, %r11w                              #  3     0xa   4      OPC=shlw_r16_one     
  callq .set_cf                                 #  4     0xe   5      OPC=callq_label      
  cmovbel %r13d, %ebx                           #  5     0x13  4      OPC=cmovbel_r32_r32  
  retq                                          #  6     0x17  1      OPC=retq             
                                                                                           
.size target, .-target
