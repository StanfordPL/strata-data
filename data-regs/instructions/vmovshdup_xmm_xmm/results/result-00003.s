  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                    
.target:                                        #        0     0      OPC=<label>               
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label           
  vpbroadcastd %xmm5, %ymm14                    #  2     0x5   5      OPC=vpbroadcastd_ymm_xmm  
  vbroadcastss %xmm7, %xmm4                     #  3     0xa   5      OPC=vbroadcastss_xmm_xmm  
  vmovsd %xmm14, %xmm4, %xmm1                   #  4     0xf   5      OPC=vmovsd_xmm_xmm_xmm    
  retq                                          #  5     0x14  1      OPC=retq                  
                                                                                                
.size target, .-target
