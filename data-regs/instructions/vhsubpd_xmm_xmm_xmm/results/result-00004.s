  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpunpcklqdq %xmm3, %xmm2, %xmm11  #  1     0     4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vpunpckhqdq %xmm3, %xmm2, %xmm1   #  2     0x4   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movaps %xmm11, %xmm12             #  3     0x8   4      OPC=movaps_xmm_xmm           
  vsubpd %xmm1, %xmm12, %xmm1       #  4     0xc   4      OPC=vsubpd_xmm_xmm_xmm       
  retq                              #  5     0x10  1      OPC=retq                     
                                                                                       
.size target, .-target
