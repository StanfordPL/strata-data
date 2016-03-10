  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                   
.target:                                        #        0     0      OPC=<label>              
  vmaxsd %xmm1, %xmm1, %xmm8                    #  1     0     4      OPC=vmaxsd_xmm_xmm_xmm   
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label          
  vphaddd %xmm8, %xmm1, %xmm9                   #  3     0x9   5      OPC=vphaddd_xmm_xmm_xmm  
  vpaddd %xmm2, %xmm9, %xmm3                    #  4     0xe   4      OPC=vpaddd_xmm_xmm_xmm   
  vpmovzxbd %xmm3, %xmm3                        #  5     0x12  5      OPC=vpmovzxbd_xmm_xmm    
  vsubps %xmm3, %xmm3, %xmm5                    #  6     0x17  4      OPC=vsubps_xmm_xmm_xmm   
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  7     0x1b  5      OPC=callq_label          
  retq                                          #  8     0x20  1      OPC=retq                 
                                                                                               
.size target, .-target
