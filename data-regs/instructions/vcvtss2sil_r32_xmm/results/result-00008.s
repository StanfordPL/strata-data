  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label        
  cvtss2sil %xmm4, %edx                         #  2     0x5   4      OPC=cvtss2sil_r32_xmm  
  popcntw %dx, %ax                              #  3     0x9   5      OPC=popcntw_r16_r16    
  callq .read_cf_into_rbx                       #  4     0xe   5      OPC=callq_label        
  salb $0x1, %bh                                #  5     0x13  2      OPC=salb_rh_one        
  xorl %edx, %ebx                               #  6     0x15  2      OPC=xorl_r32_r32       
  retq                                          #  7     0x17  1      OPC=retq               
                                                                                             
.size target, .-target
