  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vpandn %xmm1, %xmm1, %xmm3  #  1     0     4      OPC=vpandn_xmm_xmm_xmm  
  vmovsldup %ymm3, %ymm8      #  2     0x4   4      OPC=vmovsldup_ymm_ymm   
  vpmovzxdq %xmm8, %xmm10     #  3     0x8   5      OPC=vpmovzxdq_xmm_xmm   
  movddup %xmm10, %xmm1       #  4     0xd   5      OPC=movddup_xmm_xmm     
  retq                        #  5     0x12  1      OPC=retq                
                                                                            
.size target, .-target
