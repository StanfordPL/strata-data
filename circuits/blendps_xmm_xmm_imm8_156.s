  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmaxsd %xmm1, %xmm2, %xmm5        #  1     0     4      OPC=vmaxsd_xmm_xmm_xmm       
  vmaxps %xmm5, %xmm2, %xmm10       #  2     0x4   4      OPC=vmaxps_xmm_xmm_xmm       
  vpunpckhqdq %xmm5, %xmm10, %xmm9  #  3     0x8   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movlhps %xmm9, %xmm1              #  4     0xc   4      OPC=movlhps_xmm_xmm          
  retq                              #  5     0x10  1      OPC=retq                     
                                                                                       
.size target, .-target
