  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                        #  Line  RIP   Bytes  Opcode                  
.target:                      #        0     0      OPC=<label>             
  vpxor %xmm3, %xmm2, %xmm14  #  1     0     4      OPC=vpxor_xmm_xmm_xmm   
  vpmovzxwq %xmm14, %xmm7     #  2     0x4   5      OPC=vpmovzxwq_xmm_xmm   
  vxorpd %xmm7, %xmm2, %xmm5  #  3     0x9   4      OPC=vxorpd_xmm_xmm_xmm  
  vmovsd %xmm5, %xmm3, %xmm1  #  4     0xd   4      OPC=vmovsd_xmm_xmm_xmm  
  retq                        #  5     0x11  1      OPC=retq                
                                                                            
.size target, .-target
