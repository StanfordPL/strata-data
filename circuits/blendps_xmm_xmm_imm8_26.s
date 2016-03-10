  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  movdqu %xmm1, %xmm8                             #  2     0x5   5      OPC=movdqu_xmm_xmm         
  movsldup %xmm8, %xmm6                           #  3     0xa   5      OPC=movsldup_xmm_xmm       
  vunpckhps %xmm1, %xmm6, %xmm10                  #  4     0xf   4      OPC=vunpckhps_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label            
  retq                                            #  6     0x18  1      OPC=retq                   
                                                                                                   
.size target, .-target
