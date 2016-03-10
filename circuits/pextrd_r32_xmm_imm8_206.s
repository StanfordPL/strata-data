  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP  Bytes  Opcode                    
.target:                          #        0    0      OPC=<label>               
  vpmovzxdq %xmm1, %xmm10         #  1     0    5      OPC=vpmovzxdq_xmm_xmm     
  vmovhlps %xmm1, %xmm10, %xmm12  #  2     0x5  4      OPC=vmovhlps_xmm_xmm_xmm  
  vmovd %xmm12, %ebx              #  3     0x9  4      OPC=vmovd_r32_xmm         
  retq                            #  4     0xd  1      OPC=retq                  
                                                                                 
.size target, .-target
