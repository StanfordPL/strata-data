  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vpunpckhqdq %xmm2, %xmm1, %xmm14  #  1     0    4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovshdup %xmm14, %xmm11          #  2     0x4  5      OPC=vmovshdup_xmm_xmm        
  movupd %xmm11, %xmm1              #  3     0x9  5      OPC=movupd_xmm_xmm           
  retq                              #  4     0xe  1      OPC=retq                     
                                                                                      
.size target, .-target
