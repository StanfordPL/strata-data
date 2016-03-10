  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                #  Line  RIP   Bytes  Opcode              
.target:                              #        0     0      OPC=<label>         
  callq .move_128_064_xmm1_r8_r9      #  1     0     5      OPC=callq_label     
  shll $0x1, %r9d                     #  2     0x5   3      OPC=shll_r32_one    
  andnps %xmm1, %xmm1                 #  3     0x8   3      OPC=andnps_xmm_xmm  
  xaddl %r8d, %r8d                    #  4     0xb   4      OPC=xaddl_r32_r32   
  callq .move_r9b_to_byte_15_of_ymm1  #  5     0xf   5      OPC=callq_label     
  callq .move_r8b_to_byte_7_of_ymm1   #  6     0x14  5      OPC=callq_label     
  retq                                #  7     0x19  1      OPC=retq            
                                                                                
.size target, .-target
