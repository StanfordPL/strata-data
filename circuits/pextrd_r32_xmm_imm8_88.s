  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP  Bytes  Opcode                    
.target:                      #        0    0      OPC=<label>               
  vpbroadcastd %xmm1, %xmm12  #  1     0    5      OPC=vpbroadcastd_xmm_xmm  
  vpmovzxdq %xmm12, %xmm4     #  2     0x5  5      OPC=vpmovzxdq_xmm_xmm     
  vmovd %xmm4, %ebx           #  3     0xa  4      OPC=vmovd_r32_xmm         
  retq                        #  4     0xe  1      OPC=retq                  
                                                                             
.size target, .-target
