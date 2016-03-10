  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                #  Line  RIP   Bytes  Opcode                 
.target:                              #        0     0      OPC=<label>            
  callq .move_128_064_xmm1_r8_r9      #  1     0     5      OPC=callq_label        
  callq .move_r9b_to_byte_11_of_ymm1  #  2     0x5   5      OPC=callq_label        
  vmovshdup %xmm1, %xmm0              #  3     0xa   4      OPC=vmovshdup_xmm_xmm  
  movsd %xmm0, %xmm2                  #  4     0xe   4      OPC=movsd_xmm_xmm      
  movshdup %xmm2, %xmm1               #  5     0x12  4      OPC=movshdup_xmm_xmm   
  retq                                #  6     0x16  1      OPC=retq               
                                                                                   
.size target, .-target
