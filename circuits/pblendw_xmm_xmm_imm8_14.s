  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                          #  Line  RIP   Bytes  Opcode                  
.target:                        #        0     0      OPC=<label>             
  vpxor %xmm2, %xmm1, %xmm7     #  1     0     4      OPC=vpxor_xmm_xmm_xmm   
  vpmovzxwq %xmm7, %xmm12       #  2     0x4   5      OPC=vpmovzxwq_xmm_xmm   
  vxorps %xmm2, %xmm12, %xmm14  #  3     0x9   4      OPC=vxorps_xmm_xmm_xmm  
  movsd %xmm14, %xmm1           #  4     0xd   5      OPC=movsd_xmm_xmm       
  retq                          #  5     0x12  1      OPC=retq                
                                                                              
.size target, .-target
