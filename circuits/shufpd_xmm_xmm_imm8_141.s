  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpcklqdq %xmm2, %xmm1, %xmm12  #  1     0    4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  vmovupd %xmm12, %xmm7             #  2     0x4  5      OPC=vmovupd_xmm_xmm          
  punpckhqdq %xmm7, %xmm1           #  3     0x9  4      OPC=punpckhqdq_xmm_xmm       
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
