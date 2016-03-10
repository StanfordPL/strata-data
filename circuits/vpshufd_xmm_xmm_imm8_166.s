  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_064_xmm2_r8_r9                #  1     0     5      OPC=callq_label           
  callq .move_064_128_r8_r9_xmm3                #  2     0x5   5      OPC=callq_label           
  callq .move_128_032_xmm3_xmm4_xmm5_xmm6_xmm7  #  3     0xa   5      OPC=callq_label           
  vbroadcastss %xmm6, %xmm1                     #  4     0xf   5      OPC=vbroadcastss_xmm_xmm  
  vmovups %xmm6, %xmm7                          #  5     0x14  4      OPC=vmovups_xmm_xmm       
  vbroadcastss %xmm6, %xmm4                     #  6     0x18  5      OPC=vbroadcastss_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  7     0x1d  5      OPC=callq_label           
  retq                                          #  8     0x22  1      OPC=retq                  
                                                                                                
.size target, .-target
