  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpunpckhqdq %xmm1, %xmm1, %xmm11  #  1     0     4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  pmovzxwq %xmm11, %xmm0            #  2     0x4   6      OPC=pmovzxwq_xmm_xmm         
  maxsd %xmm0, %xmm11               #  3     0xa   5      OPC=maxsd_xmm_xmm            
  vandps %xmm11, %xmm0, %xmm3       #  4     0xf   5      OPC=vandps_xmm_xmm_xmm       
  movq %xmm3, %rbx                  #  5     0x14  5      OPC=movq_r64_xmm             
  retq                              #  6     0x19  1      OPC=retq                     
                                                                                       
.size target, .-target
